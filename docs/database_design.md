# Car Parts Store Database Design

## Tables

### Customers
| Column        | Type          | Description                           |
|---------------|---------------|---------------------------------------|
| id            | INT           | Primary key, auto-incremented         |
| first_name    | VARCHAR(50)    | First name of the customer            |
| last_name     | VARCHAR(50)    | Last name of the customer             |
| email         | VARCHAR(100)   | Customer's email address, unique      |
| phone         | VARCHAR(20)    | Phone number                         |
| address       | VARCHAR(255)   | Address line                         |
| city          | VARCHAR(50)    | City                                 |
| postal_code   | VARCHAR(10)    | Postal code                          |
| country       | VARCHAR(50)    | Country                              |
| created_at    | TIMESTAMP      | Creation date                        |

### Products
| Column        | Type          | Description                           |
|---------------|---------------|---------------------------------------|
| id            | INT           | Primary key, auto-incremented         |
| name          | VARCHAR(100)   | Name of the product                  |
| description   | TEXT           | Description of the product           |
| price         | DECIMAL(10, 2) | Price of the product                 |
| stock_quantity| INT            | Quantity in stock                    |
| category_id   | INT            | Foreign key to categories            |
| supplier_id   | INT            | Foreign key to suppliers             |
| created_at    | TIMESTAMP      | Creation date                        |

...

## Relationships
- **One-to-Many**: One customer can place many orders.
- **Many-to-Many**: An order can contain multiple products, and a product can appear in many orders.
