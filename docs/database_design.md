# Database design 
```mermaid
erDiagram
ACCOUNT ||--o{ TRANSACTION : Account_id
    ACCOUNT {
        string Name
        float Opening Balance
        integer ID
    }
    TRANSACTION {
        integer ID 
        integer Account_id
        string Category 
        date Date 
        float Amount
        string Merchant
        string Notes
        float End_Balance
       
    }
```
## Tables and columns:
* Account
  * Name (text)
  * Balance (float)
  * ID (integer) **
* Transaction
  * ID (integer)
  * Account_id ** (integer)
  * Category (text)
  * Date (date)
  * Amount (float)
  * Merchant(text)
  * Notes(text) - optional
  * End Balance (float)

## Sample Queries
* SELECT ID, Date, Amount, Account_id from Transaction where Account_id = 1;
* INSERT INTO Account (Name, Balance, ID) values ('Favour', 200.00, 1);
* INSERT INTO Transaction (id, account_id, category, date, amount, merchant, end_balance) values (1, 1, 'Food', '2023-08-07', -10.00, 'Chipotle', 190.00);

 CREATE TABLE Transaction (id integer, account_id integer, category varchar(40), date date, amount float, merchant varchar(40), end_balance float, PRIMARY key(id), CONSTRAINT fk_account FOREIGN KEY(account_id) REFERENCES account(id));


