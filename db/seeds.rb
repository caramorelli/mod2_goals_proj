# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

usr1 = User.create( name: 'Jim', username: 'jimmyBean', password: 'beanybaby' )
usr2 = User.create( name: 'Pam', username: '', password: '' )
usr1 = User.create( name: 'Michael', username: '', password: '' )
usr2 = User.create( name: 'Dwight', username: '', password: '' )

goal1 = Goal.create( name: 'Call Mom', weekly_occurance: 4, user_id: usr1.id)
goal2 = Goal.create( name: 'Stop Smoking', weekly_occurance: 7, user_id: usr1.id )
goal3 = Goal.create( name: 'Journaling', weekly_occurance: 5, user_id: usr2.id)
goal4 = Goal.create( name: 'water', weekly_occurance: 7, user_id: usr1.id)
goal5 = Goal.create( name: 'Workout', weekly_occurance: 5, user_id: usr2.id )
