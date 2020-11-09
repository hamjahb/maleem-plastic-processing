# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Order.create(customer_name: "Center Point", film_width: 45, height: 45, material: "HD", specifications: "courier bag", size: "M", order_weight_kg: 45000, thickness: 60, masterbatch: "white", packing_weight: 15 )


Order.create(customer_name: "Sun and Sands", film_width: 25, height: 50, material: "LD", specifications: "punch shopping bag", size: "S", order_weight_kg: 200000, thickness: 40, packing_weight: 10 )


Order.create(customer_name: "Dunkin", film_width: 60, height: 35, material: "HD", specifications: "punch bottom gusset", size: "M", order_weight_kg: 2000, thickness: 60, packing_weight: 15, total_film_made: 2200, print_complete: false, total_printed_weight: 2100, packing_weight: 15)

Order.create(customer_name: "Print", film_width: 45, height: 45, material: "LD", specifications: "punch bottom gusset", size: "M", order_weight_kg: 500, thickness: 60, packing_weight: 15, total_film_made: 540, print_complete: true, total_printed_weight: 530, packing_weight: 15)

Roll.create(order_id: 1, machine_number: 6, roll_weight: 400, operator_name: "mojo jo jo" )



Roll.create(order_id: 2, machine_number: 6, roll_weight: 234, operator_name: "HIM" )



Roll.create(order_id: 1, machine_number: 2, roll_weight: 350, operator_name: "Fuzzy Lumpkins" )



Roll.create(order_id: 1, machine_number: 3, roll_weight: 274, operator_name: "Gang Green Gang", roll_print_complete: true, printed_weight:252 )

Roll.create(order_id: 3, machine_number: 2, roll_weight: 560, operator_name: "Gang Green Gang", roll_print_complete: true, printed_weight:540 )



