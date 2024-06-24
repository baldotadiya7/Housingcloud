# Housingcloud


### Q1 Hotel Reservation System Database Schema

#### Overview
This schema is designed to support a global hotel chain's operations, focusing on room reservations, customer management, and payment processing. The structure ensures scalability and maintainability, essential for handling multiple hotels across various locations.

#### Schema Description

1. Hotels

hotel_id: Primary key, uniquely identifies each hotel.
name: Name of the hotel.
address: Address of the hotel.
phone_number: Contact number for the hotel.
email: Email address for hotel communications.
rating: The hotel's rating.
currency: The primary currency used for transactions at the hotel.

2. Rooms

room_id: Primary key, uniquely identifies each room within a hotel.
hotel_id: Foreign key, references Hotels. Identifies the hotel to which the room belongs.
type: Type of the room (e.g., single, double, suite).
number: Room number or identifier.
price: Price per night.
currency: Currency in which the price is calculated, to accommodate hotels in different countries.

3. RoomFeatures

feature_id: Primary key, uniquely identifies a feature.
description: Describes the room feature (e.g., sea view, balcony).

4. RoomFeatureLinks

room_id: Foreign key, references Rooms. Links features to specific rooms.
feature_id: Foreign key, references RoomFeatures.

5. Customers

customer_id: Primary key, uniquely identifies each customer.
name: Customer's full name.
email: Customer's email address.
phone_number: Customer's contact number.

6. Reservations

reservation_id: Primary key, uniquely identifies each reservation.
room_id: Foreign key, references Rooms.
customer_id: Foreign key, references Customers.
start_date: Reservation start date.
end_date: Reservation end date.
status: Current status of the reservation (e.g., confirmed, canceled).

7. Payments

payment_id: Primary key, uniquely identifies each payment.
reservation_id: Foreign key, references Reservations.
amount: Amount paid.
currency: Currency in which payment was made.
payment_date: Date the payment was processed.
payment_method: Method of payment (e.g., credit card, cash).

(Scalability and Maintainability
This schema is designed to be both scalable and maintainable)

###### Scalability: 
Allows handling an increasing amount of data as the hotel chain grows. Each table is designed to facilitate the addition of new records without affecting the performance of queries significantly.
###### Maintainability: 
Changes to the database (such as adding new features or room types) can be managed with minimal modifications to the existing structure.

#### Use Cases
###### Reservation Management: 
Efficiently create, update, and manage reservations.
###### Customer Relationship Management: 
Track customer data and their reservation history.
###### Financial Transactions: 
Handle payments linked to reservations, including multi-currency support for global operations.
