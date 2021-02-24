# README
This project is made for Maleem alarab factory to manage and and keep track of plastic manufacturing process and records.


This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* Gems used
- backup
- rails admin
- 

* Backup 
- config default back location

* Delivery model 
- made to add delivery model linked to order so that with every delivry is linked to an order.
- in order dashbored delivery will show total delivered of the order
- delivery will be seperate from rolls
- delivery forighn key is order number
- add quantity delivered to order
-- quantity delivered will be the total of all deliveries related to order
- add form to fill deliveries model




* Known Bugs
- after commit destroy order bug during call back
- back is not dynmaic in all cases 