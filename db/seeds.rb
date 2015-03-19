# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Region.delete_all

the_north = Region.create({name:       "The North"})
the_vale = Region.create({name:        "The Vale"})
the_riverlands = Region.create({name:  "The Riverlands"})
the_crownlands = Region.create({name:  "The Crownlands" })
the_reach = Region.create({name:       "The Reach"})
the_stormlands = Region.create({name:  "The Stormlands"})
dorne = Region.create({name:           "Dorne"})
the_seven_kingdoms.create({name:       "The Seven Kingdoms"})
