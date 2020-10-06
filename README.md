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

* ...


rails g scaffold Order customer_name:string film_width:integer material:string filler:decimal specifications:string size:string order_weight_kg:integer total_printed_kg:integer total_boxes:integer gusset:boolean delivered:boolean


rails g scaffold Roll order:references machine_number:integer roll_weight:integer ink_complete:boolean gusset_complete:boolean cut_complete:boolean operator_name:string 



* Known Bugs
- after commit destroy bug during call back