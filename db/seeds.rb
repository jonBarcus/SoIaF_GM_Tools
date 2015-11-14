# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Character.delete_all
Region.delete_all
Age.delete_all
Gender.delete_all
House.delete_all
AbilityName.delete_all
SpecialtyName.delete_all

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
test_house = House.create({
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

#AGILITY SPECIALTIES
acrobatics = SpecialtyName.create({name:            "Acrobatics",
                                   description:     "You may use Agility to perform flips, tumbles, somersaults, to leap to your feet
                                                   when lying on the ground, and a variety of other acrobatic maneuvers.",
                                   ability_name_id:  1})
balance = SpecialtyName.create({name:               "Balance",
                                description:        "Agility also helps you keep your balance when moving across a precarious surface,
                                                     allowing you to move forward or backward on a narrow ledge.  The only time you need
                                                     to test Agility to maintain your balance is when failure to do so would have consequences
                                                      (a fall that could result in death or when you would move more quickly across
                                                        treacherous terrain).  A failure means that you make no progress, while a Critical failure
                                                        means you fall.",
                                ability_name_id:    1})
contorsions = SpecialtyName.create({name:           "Contorsions",
                                    description:    "You may test Agility to slip through a tight space.  The Difficulty depends on the size of the
                                                     space through which you're moving, as shown on the following chart.  A successful test allows you
                                                     to move through the gap with no trouble, while a failure results in no progress.  A Critical failure
                                                     indicates you become stuck and must succeed on another Agility test against the same Difficult to
                                                     escape.",
                                    ability_name_id: 1})
dodge = SpecialtyName.create({name:                 "Dodge",
                              description:          "During combat, you may use a Great Action to Dodge all attacks made against you.  The result
                                                     of your Agility test replaces your Combat Defense until the start of your next turn, even if
                                                     it's worse than your Combat Defense.",
                              ability_name_id:       1})
quickness = SpecialtyName.create({name:             "Quickness",
                                  description:      "During combat, you test Agility to determine the order of initiative (bonus dice from Quickness
                                                     apply).  The combatant with the highest result goes first, followed by the next highest, and so on.
                                                     In the case of a tie, the character with the highest rank in Agility goes first.  If there's still
                                                     a tie, compare ranks in Quickness.  Finally, should the combatants still be equal, they test again
                                                     until there's a clear victor.  Quickness also comes in to play whenever you would test your reflexes
                                                      or reactions, such as catching a thrown object for example.",
                                  ability_name_id:  1})
#ANIMAL HANDLING SPECIALTIES
charm = SpecialtyName.create({name:                 "Charm",
                              description:          "Those who spend a lot of time around animals become more comfortable with them.  Such individuals
                                                     become so comfortable that they can remain calm and bear their vast experience when encountering
                                                     wild and feral creatures.  Upon first meeting a wild animal, you may test Animal Handling to calm
                                                     the beast.  The Difficulty is equal to the animal's passive Will result.  If you succeed, you improve
                                                     the animal's disposition by one step per degree of success (see Chapter 8:  Intrigue for details on
                                                      dispositions).  Generally, wild animals have the Unfriendly disposition to humans, while domesticated
                                                     animals are Neutral.  An animal's disposition must be at least Neutral for you to handle it. (Using
                                                     Animal Handling to ride an unfamiliar steed is an exception.)  Once you test Animal Handling, you may
                                                     try again, provided the animal stays around long enough for another try.",
                              ability_name_id:       2})
drive = SpecialtyName.create({name:                 "Drive",
                              description:          "Whenever you would control an animal-drawn vehicle such as a cart, wagon, or coach, you may test
                                                     Animal Handling.  Provided the animal is comfortable, not injured, and not frightened, the test is
                                                     AUTOMATIC(0).  However, if the animal becomes panicked or injured in combat, you must succeed on an
                                                     Animal Handling test to restore your control.  The Difficulty is equal to the animal's passive Will
                                                     result.  If you succeed, you may direct the animal as normal.  If you fail, the animal sprits away
                                                     from the source of its fear or injury.  You may try again on following rounds.",
                              ability_name_id:      2})
ride = SpecialtyName.create({name:                  "Ride",
                             description:           "Riding an animal trained to bear a rider requires an AUTOMATIC(0) Animal Handling test.  When you try
                                                     to ride an animal that's not inclined to be ridden (Dislike or worse disposition), you must succeed on
                                                     an Animal Handling test.  The Difficulty equals the animal's passive Will result.  A succees indicates
                                                     you gain control for a number of rounds equal to your Animal Handling rank times your degree of success.
                                                     Three consecutive successful tests mean you gain mastery over the animal and it will bear you.  A failed
                                                     test means the animal doesn't move for the round.  A Critical Failure means the animal throws you off.
                                                     You land 1d6/2 yards away and take 1 damage (ignoring AR) for each yard you traveled.

                                                     When riding an animal in combat, you must spend a Lesser Action to maintain control over the animal if the
                                                     animal is trained for war or a Greater Action if it is not trained for war.  If the animal is injured or
                                                     frightened, you must test to control it as a Greater Action.  The Difficulty is equal to the animal's passive
                                                     Will result.  If you succeed, you calm the animal down enough to resume normal control actions.  If you fail,
                                                     the animal sprints away from the source of its injury or fear.  If you roll a Critical failure, you land 1d6/2 yards
                                                     away and take 1 damage (ignoring AR) for each yard you traveled.  Alternatively, you can use the Charm function to
                                                     improve the animal's disposition toward you as you would whenever you encounter an unfriendly animal.",
                              ability_name_id:      2})
train = SpecialtyName.create({name:                 "Train",
                              description:          "You can use Animal Handling to teach animals to perform tasks, ranging from simple tricks to complex tasks, such as
                                                     war training.  Animal instruction is an Extended Action.  You must succeed on a number of tests equal to the animal's
                                                     Will minus its Cunning (minumum one test), with each test made once per week of training, assuming you spend a few hours
                                                     every day with the animal.  The test Difficulty is based on the animal's Will as shown on the following chart.  Typical
                                                     tricks and tasks include fetching, guarding, attacking, working, bearing a rider, and so on, within reason.  Training
                                                     an animal for war is a bit more invovled and requires an extra week to instill the proper discipline.",
                              ability_name_id:      2})
#ATHLETICS SPECIALTIES
climb = SpecialtyName.create({name:                 "Climb",
                              description:          "Whenever you would ascend or descend a surface, you test Athletics.  A successful test allows you to climb 1 yard up or
                                                     down per degree of success, up to your normal Movement.  The Difficulty of the test depends on the quality of the surface.
                                                     A failed test indicates that you make no progress, while more than one degree of failure means you lose your hold and fall
                                                     from the height you've attained.",
                              ability_name_id:      3})
jump = SpecialtyName.create({name:                  "Jump",
                             description:           "You test Athletics whenever you would leap up or over an obstacle such as a fence or pit.  The Difficulty depends
                                                     on the type of Jump attempted.  There are three basic Jumps -- running jumps, standing jumps, and high jumps.  To make a running
                                                     jump,  you must move at least 3 yards; otherwise, it is a standing jump.  Should you need to know, when performing a standing or
                                                     running jump, your vertical height is equal to half the distance jumped.",
                             ability_name_id:        3})
run = SpecialtyName.create({name:                   "Run",
                            description:            "Most times, you don't need to test Athletics to Run.  You simply move at your sprint speed.  However, two uses require tests.
                                                     Whenever you would cover any great distance, you must succeed on a CHALLENGING(9) Athletics test.  If you succeed on the test,
                                                     you may Run for an hour per degree.  At the end of this time, you must test again, but the Difficulty increases by one step to
                                                     FORMIDABLE(12).  If at any time you fail, you gain one point of Fatigue(see page 175).  If you're not using the fatigue rules, a
                                                     failed test simply means you must stop and cannot Run again until you rest for four hours.  The other major use of Run is to increase
                                                     your speed.  In combat, whenever you take the Sprint action, you can attempt a FORMIDABLE(12) Athletics test to run faster and, thus,
                                                     cover more ground.  A success allows you to sprint 1 extra yard per degree.",
                            ability_name_id:        3})
strength = SpecialtyName.create({name:              "Strength",
                                 description:       "You use Athletics to lift or push through heavy objects.  Anytime you would life something the Narrator deems heavy, test Athletics.
                                                     For benchmark difficulties, see the following chart.  Note that these are starting points for lifting the weight once.  The Narrator may
                                                     modify the Difficulty based on an object's size and Bulk.  It also gets harder to lift the same weight repeatedly and, thus, the Difficulty
                                                     increases as well.",
                                 ability_name_id:   3})
swim = SpecialtyName.create({name:                  "Swim",
                             description:           "You can only swim if you have at least a 1B in Swim.  Without it, you can keep your head above water, provided the conditions are ideal--
                                                     calm waters, no or light wind, relatively shallow water, and so on.  Otherwise, you sink and possibly drown.  If you have the Swim specialty,
                                                     you need not make Athletics tests unless you are in severe conditions, such as trying to ford a swollen river or keep your head above water
                                                     in a storm-tossed sea.  The test Difficulty depends on the conditions of the water, factoring in such things as depth, undertow, current, wind,
                                                     and so on.  The Narrator sets the Difficulty based on all of these issues but can use the following as benchmarks.  A successful test allows you
                                                     to move at half your Movement plus 1 more yard for each degree of success after the first.  A failed Athletics test indicates no progress.
                                                     A second failed test means you slip beneath the water's surface.  On the next round, you must pass another Athletics test to break the surface.
                                                     Each round spent under the surface requires another successful test to get back to the air.  So if you fail three consecutive tests, you need three
                                                     consecutive successful tests to get back to the surface.",
                              ability_name_id:       3})
tthrow = SpecialtyName.create({name:                "Throw",
                               description:         "You may also test Athletics to hurl objects.  For items made for throwing, such as some axes, spears, knives, and the like, use Marksmanship
                                                     instead.  For all other items, use Athletics.  The Difficulty and distance thrown depends on the object's weight and the degree of success.  A
                                                     failed test means the object lands 1d6 yards away from the intended direction, while more than one degree of failure means the object lands at your
                                                     feet.  If the item is bulky, you take -1D per Bulk point.",
                              ability_name_id:      3})
#AWARENESS SPECIALTIES
empathy = SpecialtyName.create({name:               "Empathy",
                                description:        "You may use Awareness to look into the hearts of others and perceive the truthfulness of what they say and whether or not they seem genuine.  make
                                                     an Awareness test against your target's passive Deception result, with a success revealing the target's general disposition toward you or the topic of
                                                     your conversation.  Attaining additional degrees reveal a greater sense about the target's motivations, attitudes and so on.  This use of Awareness
                                                     doesn't provide mind-reading; it merely lets you get an instinctual hunch about a target's motives based on his manner, expressions, and the tone of his voice.",
                                ability_name_id:    4})
notice = SpecialtyName.create({name:                "Notice",
                               description:         "Awareness is most often used to employ your senses, to perceive the world around you and see the small details.  Unless you're actively searching or looking
                                                     around, you don't test Awareness.  Instead, anyone who tries to hide from you or conceal something from you must beat your passive Awareness result.  On a
                                                     failed test, you become aware of the effort to hide automatically.  If, however, you are actively searching for something or someone, you must equal or beat
                                                     the opponent's Stealth test or the Difficulty set by the Narrator to find the hidden item.  Most Awareness test difficulties made to locate hidden objects,
                                                     levers, and doors are FORMIDABLE(12), though well-hidden objects may be harder to find.",
                               ability_name_id:     4})

