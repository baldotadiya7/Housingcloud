SELECT
    p.personId,
    CONCAT(p.firstName, ' ', p.lastName) AS name,
    p.email,
    p.dob,
    p.address AS address1,
    LEFT(p.address, CHARINDEX(',', p.address) - 1) AS address2, -- Address2 is just the street part
    LTRIM(RTRIM(SUBSTRING(p.address, CHARINDEX(',', p.address) + 1, CHARINDEX(',', p.address, CHARINDEX(',', p.address) + 1) - CHARINDEX(',', p.address) - 1))) AS city,
    RIGHT(LTRIM(RTRIM(SUBSTRING(p.address, CHARINDEX(',', p.address) + 1, LEN(p.address)))), 2) AS state,
    NULL AS zip, -- Assuming ZIP code is not provided
    (SELECT STRING_AGG(m.id, ',') FROM majors_data m WHERE m.name = p.majors) AS majorIds,
    i.bedId
INTO [dbo].[generate]
FROM
    persons_data p
JOIN
    occupancy_data o ON p.personId = o.personId
JOIN
    inventory_data i ON o.buildingName = i.buildingName AND o.roomName = i.roomName AND o.bedName = i.bedName

