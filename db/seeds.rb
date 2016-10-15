# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Classroom.create(name: 'F101',capacity: 100, area: 'Khu F')
Classroom.create(name: 'F102',capacity: 60, area: 'Khu F')
Classroom.create(name: 'B103',capacity: 40, area: 'Khu B')
Role.create(number: 1, name: "administrator")
Role.create(number: 2, name: "lecturer")
Role.create(number: 3, name: "student")
Schedule.create(start: '09:30', finish: '11:30', classroom_id: 1, user_id: 1, date: '2016-9-9', subject: "Nguyen Ly HDH")
Schedule.create(start: '07:30', finish: '9:30', classroom_id: 1, user_id: 2, date: '2016-9-10', subject: "An toan thong tin")
Schedule.create(start: '07:30', finish: '9:30', classroom_id: 2, user_id: 3, date: '2016-9-11', subject: "Machine Learning")
Schedule.create(start: '13:30', finish: '15:30', classroom_id: 3, user_id: 3, date: '2016-9-12', subject: "Co Hoc Li Thuyet")
User.create(name: "truong van phu", email: "phugodness@gmail.com", password: "phugodness", password_confirmation: "phugodness", role_id: 1)
User.create(name: "truong van phu s", email: "phugodnesss@gmail.com", password: "phugodness", password_confirmation: "phugodness", role_id: 2)
User.create(name: "truong van phu ss", email: "phugodnessss@gmail.com", password: "phugodness", password_confirmation: "phugodness", role_id: 3)
