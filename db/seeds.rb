# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
6.times do |number|
    Agency.create(
        title: Faker::Company.name,
        address: Faker::Address.street_address,
        suburb: Faker::Address.city
    ) do |agent|
        order = Order.create(
            order_number: number,
            agency: agent
        )

        3.times do
            Product.create(
                name: Faker::Music.instrument,
                order: order
            )
        end
    end
end
