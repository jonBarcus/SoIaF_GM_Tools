# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Region.delete_all
Age.delete_all
Gender.delete_all
House.delete_all
AbilityName.delete_all

the_north = Region.create({name:          "The North"})
the_vale = Region.create({name:           "The Vale"})
the_riverlands = Region.create({name:     "The Riverlands"})
the_crownlands = Region.create({name:     "The Crownlands" })
the_westerlands = Region.create({name:    "The Westerlands"})
the_reach = Region.create({name:          "The Reach"})
the_stormlands = Region.create({name:     "The Stormlands"})
dorne = Region.create({name:              "Dorne"})
the_seven_kingdoms = Region.create({name: "The Seven Kingdoms"})

#OPTIMIZE Figure out way to remove test house for testing
test_house = House.create({id:                     1,
                          name:                   "Testee",
                          region_id:              1,
                          history:                "Founded by...Bob"})

youth = Age.create({name:                 "Youth",
                    age_min:               0,
                    age_max:               9,
                    ability_xp:            120,
                    specialty_xp:          40,
                    destiny_points:        7,
                    max_benefits:          3 })
adolescent = Age.create({name:            "Adolescent",
                         age_min:          10,
                         age_max:          13,
                         ability_xp:       150,
                         specialty_xp:     40,
                         destiny_points:   6,
                         max_benefits:     3  })
young_adult = Age.create({name:           "Young Adult",
                          age_min:         14,
                          age_max:         17,
                          ability_xp:      180,
                          specialty_xp:    60,
                          destiny_points:  5,
                          max_benefits:    3  })
adult = Age.create({name:                 "Adult",
                    age_min:               18,
                    age_max:               29,
                    ability_xp:            210,
                    specialty_xp:          80,
                    destiny_points:        4,
                    max_benefits:          3  })
middle_aged = Age.create({name:           "Middle Aged",
                          age_min:         30,
                          age_max:         49,
                          ability_xp:      240,
                          specialty_xp:    100,
                          destiny_points:  3,
                          max_benefits:    3 })
old = Age.create({name:                   "Old",
                  age_min:                 50,
                  age_max:                 69,
                  ability_xp:              270,
                  specialty_xp:            160,
                  destiny_points:          2,
                  max_benefits:            2})
very_old = Age.create({name:              "Very Old",
                       age_min:            70,
                       age_max:            79,
                       ability_xp:         330,
                       specialty_xp:       200,
                       destiny_points:     1,
                       max_benefits:       1})
venerable = Age.create({name:             "Venerable",
                        age_min:           80,
                        age_max:           200,
                        ability_xp:        360,
                        specialty_xp:      240,
                        destiny_points:    0,
                        max_benefits:      0})
male_gender = Gender.create({name:         "Male"})
female_gender = Gender.create({name:       "Female"})


agility = AbilityName.create({name:               "Agility",
                              description:        "Agility measures dexterity, nimbleness, reflexes,
                                                    and flexibility.  In some ways, it describes how
                                                    comfortable you are in your body, how well you
                                                    master your movement, and how well you react to
                                                    your surroundings.  A low Agility suggests stiffness,
                                                    uncertainty, and uncommon tension.  A high Agility
                                                    reflects suppleness and grace, uncanny speed, and easy
                                                    physical movement."})
animal_handling = AbilityName.create({name:       "Animal Handling",
                                      description:"Expertise in handling animals is a valuable talent,
                                                     one that finds the best trained employed by noble
                                                    houses great and small.  The reason is simple:
                                                   humanity relies on beasts to survive.  A trained dog is
                                                    more than just a companion; it's a servant, a fellow
                                                    warrior, and even a savior.  Thus, from kennelmasters
                                                    to horse trainers, those trained in Animal Handling are
                                                    among some of the most valued folk in the Seven Kingdoms.
                                                     Animal handling addresses the various skills and techniques
                                                    used to train, work, and care for animals.  Whenever you
                                                    would regain control over a panicked mount, train a dog,
                                                    to serve as a guardian, or train ravens to carry messages,
                                                    you test this ability.  Animal Handling is also used to
                                                    control dray animals, guiding them in their work as they
                                                    pull ploughs or wagons.  In short, this ability serves for
                                                    just about any interaction between man and beast."})
athletics = AbilityName.create({name:             "Athletics",
                                description:      "Athletics describes the degree of training, the application,
                                                    of physical fitness, coordination, training, and raw muscle.
                                                    Athletics is an important ability in that it determines how
                                                    far you can jump, how fast you can run, how quickly you move,
                                                    and how strong you are.  Your Athletics rank alone describes
                                                    many elements of your characters, but you can test Athletics
                                                    to push yourself beyond normal limits."})
awareness = AbilityName.create({name:             "Awareness",
                                description:      "Awareness measures your senses, how quickly you can respond
                                                   to changes in your environment, and your ability to see through
                                                   double-talk and feints to arrive at the truth of the matter.
                                                   Whenever you would perceive your surroundings or assess another
                                                   person, use Awareness."})
cunning = AbilityName.create({name:               "Cunning",
                              description:        "Cunning encapsulates cleverness, intellect, and the application
                                                   of all your collected knowledge.  Typically, Cunning comes into
                                                   play whenever you might recall an important detail or instruction,
                                                   work through a puzzle, or solve some other problem, such as when
                                                   researching and deciphering codes.  While it's an important ability
                                                   those who hold power, even those who fight on the battlefield can
                                                   take advantage of being smarter than their enemies."})
deception = AbilityName.create({name:             "Deception",
                                description:      "Deception measures your gift at duplicity, your ability
                                                   to lie and deceive.  You use Deception to mask your intentions
                                                   and hide your agenda.  You also use Deception to pretend to be
                                                   someone other than who you really are, to affect a different
                                                   accent, and pull off a disguise.  While Deception has negative
                                                   connotations, it is a useful ability for those who play the game
                                                   of thrones."})
endurance = AbilityName.create({name:             "Endurance",
                                description:      "Endurance measures your physical well-being, health, and hardiness.
                                                   Your Endurance determines how much punishment you can take, as well
                                                   as how quickly you recover from injuries.  As well, whenever you are
                                                   exposed to a hazard such as poison, smoke, and similar effects, you
                                                   test Endurance to stave off the effects."})
fighting = AbilityName.create({name:              "Fighting",
                               description:       "Fighting describes your skill at arms, your ability to wield weapons
                                                   effectively in combat.  Whenever you would attack unarmed or use a
                                                   hand-held weapon, you test Fighting."})
healing = AbilityName.create({name:               "Healing",
                              description:        ""})
