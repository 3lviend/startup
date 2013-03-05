# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


categories = Category.create([{ title: 'Design Jobs'}, {title: 'Business/Exec Jobs'},
    {title: 'iPhone Developer Jobs '}, {title: 'Programming Jobs'}, {title: 'Customer Service/Support Jobs'},
     title: 'Other Jobs'])