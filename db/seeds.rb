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
                              description:        "Life in the Seven Kingdoms is perilous, and those who venture beyond
                                                   the relative safety of their walls are at risk of attack from bandits
                                                   and mountain men, wildlings, rogue knights, and even from predatory
                                                   animals.  With such encounters come injuries, and while many may recover
                                                   on their own, injuries left untended may fester, and death can result
                                                   even from a minor cut.  Healing, then, represents a skill with and
                                                   understanding of the accumulated medical knowledge throughout the
                                                   world.  Rank in this availability reflects an understanding of health
                                                   and recovery, with the highest ranks representing talents held only by
                                                   the greatest of maesters."})
knowledge = AbilityName.create({name:             "Knowledge",
                                description:      "Knowledge describes your general understanding and awareness of the
                                                   world in which you live.  It represents a broad spectrum of subjects,
                                                   ranging from history, agriculture, economics, politics, and numerous
                                                   other subjects--but only in the braodest possible ways.  For specialized
                                                   forms of knowledge, you must invest Destiny Points to acquire the
                                                   Knowledge Focus benefit."})
language = AbilityName.create({name:              "Language",
                               description:       "Language is the ability to communicate in a tongue, usually through speech,
                                                   but among the best educated, also through the written word.  The
                                                   starting rank in this ability applies to your knowledge of the Common
                                                   Tongue spoken throughout Westeros.  You start with rank 0 in all other
                                                   languages.  When you improve this ability, you may improve your ability
                                                   with the Common Tongue or select another language."})
marksmanship = AbilityName.create({name:          "Marksmanship",
                                   description:   "Marksmanship represents your skill with ranged weapons--most notably
                                                   bows and crossbows, but also slings, thrown weapons, and even larger
                                                   siege weapons.  It is the ability to use them appropriately and accurately
                                                   in combat.  Whenever you make an attack using a ranged weapon, you test
                                                   Marksmanship, likewise when you are target shooting or simply showing off
                                                   your skill."})
persuasion = AbilityName.create({name:            "Persuasion",
                                 description:     "Persuasion is the ability to manipulate the emotions and beliefs of others.
                                                   With this ability, you can molify how others see you, shape their attitude
                                                   towards others, convince them of things they might not otherwise agree to,
                                                   and more.  While a potent ability--and one vital to those who play the game
                                                   of thrones--limits do exist, and those who have no interest in intrigue or
                                                    conversation can't be forced to endure your efforts of manipulation.  But
                                                    for those who want something from you or who are amenable to you, Persuasion
                                                      can be a powerful tool."})
status = AbilityName.create({name:                "Status",
                             description:         "Of all of the abilities, Status is one of the more unusual in that it isn't
                                                   determined through normal means during character creation.  Instead, your
                                                   position inside your noble house determines your Status.  In a way, it is a much
                                                   a part of you as Athletics, Endurance, and Persuasion are, for you have little
                                                   control over where and to whom you were born.  If by a stroke of poor luck you
                                                   were born to a family of smallfolk leech farmers, odds are that you'll never be
                                                   able to raise yourself to a higher Status.  Similarly, if born to a great
                                                   house, your family may be scattered and destroyed and you exiled; your condition
                                                   and circumstances can never change who you are in the eyes of your peers--even
                                                   though shame and disgrace can significantly affect how well you can exert your Status.
                                                   Functionally, Status describes the circumstances of your birth and the knowledge
                                                   and influence those circumstances grant you.  The higher your rank, the more likely
                                                   you will be able to recognize heraldry, the better your reputation, and the stronger
                                                   your knowledge of managing people and lands."})
stealth = AbilityName.create({name:               "Stealth",
                              description:        "Stealth represents your ability to creep about unseen and unheard when you want
                                                   or need to.  Whenever you would move without being noticed, you test Stealth."})
survival = AbilityName.create({name:              "Survival",
                               description:       "Survival is the ability to get by in the wild, to hunt, to forage, to avoid getting
                                                   lost, and to follow tracks.  The Survival skill is important for a variety of people in
                                                   that hunting remains an important method of providing food for one's family, especially
                                                   in the more remote corners of Westeros.  As well, hunting and hawking are common
                                                   pastimes for the nobility of the Seven Kingdoms, and lacking the ability to hunt
                                                   calls into question an individual's courage and manliness."})
thievery = AbilityName.create({name:              "Thievery",
                               description:       "Thievery is a catchall ability for any skill or talent that involves larcenous
                                                   activities.  Examples include picking locks, hand tricks, and general robbery."})
warfare = AbilityName.create({name:               "Warfare",
                              description:        "Warfare describes a character's talents at managing a battlefield, covering
                                                   the ability to issue commands, strategic knowledge for maneuvering armies and tactics
                                                   for dealing with small engagements.  Warfare is used extensively in combat and warfare
                                                    but may also be used outside of combat to look for areas of opportunities for strategic
                                                    or tactical advantage"})
will = AbilityName.create({name:                  "Will",
                           description:           "Will is your mental fortitude, and it reflects the state of your mind's health
                                                   and endurance.  It represents your ability to withstand fear in the face of
                                                   appalling violence or supernatural phenomena, and it serves as the foundation
                                                   for your ability to resist being manipulated by others."})

