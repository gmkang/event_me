# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Friend.destroy_all

Friend.create([
{ name: 'Cat Bae', dob: DateTime.strptime("12/07/1989", "%m/%d/%Y"), notes: 'Likes cats and also needs a new snowboard'},
{ name: 'Matthew Kim', dob: DateTime.strptime("12/23/1989", "%m/%d/%Y"), notes: 'Enjoys sour cherry pie and juicy steak dinners.'},
{ name: 'Gina Kang', dob: DateTime.strptime("03/13/1991", "%m/%d/%Y"), notes: 'Loves dessert and accessories.'}
])

