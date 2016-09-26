cook = Captain.create(name: "Captain Cook", admiral: true)
kidd = Captain.create(name: "Captain Kidd", admiral: true)
william = Captain.create(name: "William Kyd", admiral: false)
arel = Captain.create(name: "Arel English", admiral: true)
henry = Captain.create(name: "Henry Hudson", admiral: false)
samuel = Captain.create(name: "Samuel Axe", admiral: false)

h_28 = Boat.create(name: "H 28", length: 27)
nacra_17 = Boat.create(name: "Nacra 17", length: 17)
regulator = Boat.create(name: "Regulator 34SS", length: 34)
zodiac = Boat.create(name: "Zodiac CZ7", length: 24)
boston_whaler = Boat.create(name: "Boston Whaler", length: 13)
forty_niner = Boat.create(name: "49er", length: 16)
cape_dory = Boat.create(name: "Cape Dory", length: 28)
laser = Boat.create(name: "Laser", length: 14)
triton = Boat.create(name: "Triton 21 TRX", length: 21)
sun_tracker = Boat.create(name: "Sun Tracker Regency 254 XP3", length: 27)
harpoon = Boat.create(name: "Harpoon 4.7", length: 15.5)
sunfish = Boat.create(name: "Sunfish", length: 13.7)

h_28.captain = cook
nacra_17.captain = kidd
regulator.captain = william
zodiac.captain = arel
boston_whaler.captain = henry
forty_niner.captain = samuel
cape_dory.captain = cook
laser.captain = cook
triton.captain = arel
sun_tracker.captain = samuel

h_28.save
nacra_17.save
regulator.save
zodiac.save
boston_whaler.save
forty_niner.save
cape_dory.save
laser.save
triton.save
sun_tracker.save

ketch = Classification.create(name: "Ketch")
sailboat = Classification.create(name: "Sailboat")
catamaran = Classification.create(name: "Catamaran")
sloop = Classification.create(name: "Sloop")
motorboat = Classification.create(name: "Motorboat")
center = Classification.create(name: "Center Console")
rib = Classification.create(name: "RIB")
trawler = Classification.create(name: "Trawler")
cat_rig = Classification.create(name: "Cat Rig Boat")
bass = Classification.create(name: "Bass Boat")
pontoon = Classification.create(name: "Pontoon Boat")

h_28.classifications << [ketch, sailboat]
nacra_17.classifications << [catamaran, sloop, sailboat]
regulator.classifications << [motorboat, center]
zodiac.classifications << [rib, motorboat, center]
boston_whaler.classifications << [motorboat]
forty_niner.classifications << [sailboat, sloop]
cape_dory.classifications << [motorboat, trawler]
laser.classifications << [sailboat, cat_rig]
triton.classifications << [motorboat, bass]
sun_tracker.classifications << [motorboat, pontoon, catamaran]
harpoon.classifications << [sailboat, sloop]
sunfish.classifications << [sailboat, cat_rig]


abbotts = Family.create(name: "Abbott", business: "Jabot Cosmetics")
newman = Family.create(name: "Newman", business: "Newman Enterprises")
winters = Family.create(name: "Winters", business: "The Abbott - Winters Foundation")
chancellor = Family.create(name: "Chancellor", business: "Chancellor Industries")
ashby = Family.create(name: "Ashby", business: "Australian Mob")

jack = Character.create(first_name: "Jack", last_name: "Abbott", description: "Head of the Abbott Family since his father John Abbott died", bio: "https://en.wikipedia.org/wiki/Jack_Abbott_(The_Young_and_the_Restless)#Storylines", alive: true)
bill = Character.create(first_name: "Billy", last_name: "Abbott", description: "The Black Sheep", bio: "https://en.wikipedia.org/wiki/Billy_Abbott#Storylines", alive: true)
ashley = Character.create(first_name: "Ashley", last_name: "Abbott", description: "Head Chemist of Jabot Cosmetics", bio: "https://en.wikipedia.org/wiki/Ashley_Abbott#Storylines", alive: true)
victor = Character.create(first_name: "Victor", last_name: "Newman", description: "Head and Patriarch of the Newman Family and Newman Enterprises", bio: "https://en.wikipedia.org/wiki/Victor_Newman#Storylines", alive: true)
nikki = Character.create(first_name: "Nikki", last_name: "Newman", description: "The Woman who stands by Victor", bio: "https://en.wikipedia.org/wiki/Nikki_Newman#Storylines", alive: true)
cane = Character.create(first_name: "Cane",last_name: "Ashby",description: "Runaway Australian - The Character that was too popular to die",bio: "https://en.wikipedia.org/wiki/Cane_Ashby#Storylines" ,alive: true)
abby = Character.create(first_name: "Abby",last_name: "Rayburn", description: "Warm-hearted but spoiled daughter at the Abbott-Newman crossroads",bio: "https://en.wikipedia.org/wiki/Abby_Newman#Storylines" ,alive: true)
phyllis = Character.create(first_name: "Phyllis",last_name: "Abbott", description: "Fierce Campaign Manager and Webmistress who goes by the nickname Red",bio: "https://en.wikipedia.org/wiki/Phyllis_Summers#Storylines" ,alive: true)
nick = Character.create(first_name: "Nicholas",last_name: "Newman", description: "The Good Newman",bio: "https://en.wikipedia.org/wiki/Nicholas_Newman" ,alive: true)


CharacterRelationship.create(relationship: "enemies", :character_a => jack, :character_b => victor, status: "on")
CharacterRelationship.create(relationship: "enemies", :character_a => phyllis, :character_b => victor, status: "on")
CharacterRelationship.create(relationship: "married", :character_a => victor, :character_b => nikki, status: "on")
CharacterRelationship.create(relationship: "married", :character_a => phyllis, :character_b => jack, status: "complicated")
CharacterRelationship.create(relationship: "affair", :character_a => phyllis, :character_b => bill, status: "complicated")
CharacterRelationship.create(relationship: "married", :character_a => phyllis, :character_b => nick, status: "off")
CharacterRelationship.create(relationship: "affair", :character_a => nick, :character_b => phyllis, status: "off")
CharacterRelationship.create(relationship: "half-siblings", :character_a => jack, :character_b => bill, status: "complicated")
CharacterRelationship.create(relationship: "daughter", :character_a => abby, :character_b => ashley, status: "on")
CharacterRelationship.create(relationship: "daughter", :character_a => abby, :character_b => victor, status: "on")
CharacterRelationship.create(relationship: "affair", :character_a => victor, :character_b => ashley, status: "off")
CharacterRelationship.create(relationship: "affair", :character_a => jack, :character_b => nikki, status: "off")
CharacterRelationship.create(relationship: "friends", :character_a => jack, :character_b => nikki, status: "on")
CharacterRelationship.create(relationship: "siblings", :character_a => jack, :character_b => ashley, status: "on")
CharacterRelationship.create(relationship: "son", :character_a => nick, :character_b => victor, status: "on")
CharacterRelationship.create(relationship: "son", :character_a => nick, :character_b => nikki, status: "on")

FamilyCharacter.create(character_id: 1, family_id: 1)
FamilyCharacter.create(character_id: 2, family_id: 1)
FamilyCharacter.create(character_id: 2, family_id: 4)
FamilyCharacter.create(character_id: 3, family_id: 1)
FamilyCharacter.create(character_id: 4, family_id: 2)
FamilyCharacter.create(character_id: 5, family_id: 2)
FamilyCharacter.create(character_id: 6, family_id: 3)
FamilyCharacter.create(character_id: 6, family_id: 4)
FamilyCharacter.create(character_id: 6, family_id: 5)
FamilyCharacter.create(character_id: 7, family_id: 1)
FamilyCharacter.create(character_id: 7, family_id: 2)
FamilyCharacter.create(character_id: 8, family_id: 1)
FamilyCharacter.create(character_id: 8, family_id: 2)
FamilyCharacter.create(character_id: 9, family_id: 1)

# Character.create(first_name: ,last_name:, description: ,bio: ,alive: true)
# CharacterRelationship.create(relationship: "", :character_a => , :character_b => , status: "on")
# FamilyCharacter.create(character_id: , family_id: )
