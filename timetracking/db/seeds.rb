# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

(1..100).each {
	Project.create(name: "Ironhack", description: "School")
}

#Entry.create(project_id: 1, hours: 0, minutes: 20, comments: "Entrada de prueba", date: "")


