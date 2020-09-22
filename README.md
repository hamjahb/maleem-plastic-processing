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


rails g scaffold Order order_date:timestamp customer_name:string material:string filler:decimal specifications:string order_weight(KG):integer total_printed(KG):integer total_boxes:integer gusset:boolean delivered:boolean