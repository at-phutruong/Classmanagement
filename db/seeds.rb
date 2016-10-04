# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Classroom.create(name: 'F101',capacity: 100, area: 'Khu F')
# Classroom.create(name: 'F102',capacity: 60, area: 'Khu F')
# Classroom.create(name: 'B103',capacity: 40, area: 'Khu B')
# Teacher.create(name: 'Nguyen Hong')
# Teacher.create(name: 'Truong Linh')
# Teacher.create(name: 'Ly The')
Schedule.create(start: '09:30', end: '11:30', classroom_id: 1, teacher_id: 1, date: '2016-9-9')
Schedule.create(start: '07:30', end: '9:30', classroom_id: 1, teacher_id: 2, date: '2016-9-10')
Schedule.create(start: '07:30', end: '9:30', classroom_id: 1, teacher_id: 3, date: '2016-9-11')
Schedule.create(start: '13:30', end: '15:30', classroom_id: 3, teacher_id: 3, date: '2016-9-12')
