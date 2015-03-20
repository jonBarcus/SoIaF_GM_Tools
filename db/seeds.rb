# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Region.delete_all
Age.delete_all

the_north = Region.create({name:          "The North"})
the_vale = Region.create({name:           "The Vale"})
the_riverlands = Region.create({name:     "The Riverlands"})
the_crownlands = Region.create({name:     "The Crownlands" })
the_westerlands = Region.create({name:    "The Westerlands"})
the_reach = Region.create({name:          "The Reach"})
the_stormlands = Region.create({name:     "The Stormlands"})
dorne = Region.create({name:              "Dorne"})
the_seven_kingdoms = Region.create({name: "The Seven Kingdoms"})

youth = Age.create({name:                 "Youth",
                    age_min:               0,
                    age_max:               9,
                    ability_xp:            120,
                    specialty_xp:          40})
adolescent = Age.create({name:            "Adolescent",
                         age_min:          10,
                         age_max:          13,
                         ability_xp:       150,
                         specialty_xp:     40})
young_adult = Age.create({name:           "Young Adult",
                          age_min:         14,
                          age_max:         17,
                          ability_xp:      180,
                          specialty_xp:    60})
adult = Age.create({name:                 "Adult",
                    age_min:               18,
                    age_max:               29,
                    ability_xp:            210,
                    specialty_xp:          80})
middle_aged = Age.create({name:           "Middle Aged",
                          age_min:         30,
                          age_max:         49,
                          ability_xp:      240,
                          specialty_xp:    100})
old = Age.create({name:                   "Old",
                  age_min:                 50,
                  age_max:                 69,
                  ability_xp:              270,
                  specialty_xp:            160})
very_old = Age.create({name:              "Very Old",
                       age_min:            70,
                       age_max:            79,
                       ability_xp:         330,
                       specialty_xp:       200})
venerable = Age.create({name:             "Venerable",
                        age_min:           80,
                        age_max:           200,
                        ability_xp:        360,
                        specialty_xp:      240})
