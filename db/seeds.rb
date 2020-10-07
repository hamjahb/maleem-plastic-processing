# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Order.create(customer_name: "Center Point", film_width: 45, material: "HD", specifications: "courier bag", size: "M", order_weight_kg: 45000, thickness: 70, masterbatch: "white" )


Order.create(customer_name: "Sun and Sands", film_width: 25, material: "LD", specifications: "punch shopping bag", size: "S", order_weight_kg: 200000, thickness: 40, )


Roll.create(order_id: 1, machine_number: 6, roll_weight: 400, operator_name: "mojo jo jo" )



Roll.create(order_id: 2, machine_number: 6, roll_weight: 234, operator_name: "HIM" )



Roll.create(order_id: 1, machine_number: 2, roll_weight: 350, operator_name: "Fuzzy Lumpkins" )

Roll.create(order_id: 1, machine_number: 3, roll_weight: 194, operator_name: "Princess" )



