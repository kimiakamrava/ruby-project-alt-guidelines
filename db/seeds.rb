
Parasite.destroy_all
Memory.destroy_all
RealCharacter.destroy_all


sleepygary = Parasite.create(name: "Sleepy Gary",
 story: "jerry's lover,He wears a nightgown with a long, droopy hat with blue and white stripes ",
 identity: "portrayed by the Alien Parasites ")
pencilvester = Parasite.create(name: "Pencilvester", 
 story: "He is an anthropomorphic pencil who is apparently great lifelong friends ",
 identity: "portrayed by the Alien Parasites ")
hamurai = Parasite.create(name: "Hamurai", 
 story: "Hamurai is a samurai who wears a suit of armor made out of meat. Mostly steamed ham, but also steaks, sausages, and bacon strips.",
 identity: "portrayed by the Alien Parasites" )
bearded_lady = Parasite.create(name: "Bearded Lady", 
 story: "The Bearded Lady wears a long pink dress with white trim. Of course, she also has a long beard that reaches to about her chest. She has her hair in an updo.",
 identity: "portrayed by the Alien Parasites" )
mr_meeseeks = Parasite.create(name: "Mr. Meeseeks", 
 story: "Tall, slender, blue men with red hair (though some are bald) and beady eyes.",
 identity: "Artificial Humanoids")

 rick_sanchez = RealCharacter.create(name:"Rick")
 morty_smith = RealCharacter.create(name:"Morty")
 summer_smith = RealCharacter.create(name:"Summer")
 mr_poopy_butthole = RealCharacter.create(name:"Mr. Poopybutthole")
 bird_person = RealCharacter.create(name:"BirdPerson")

 Memory.create(real_character_id:rick_sanchez.id,parasite_id:hamurai.id)
 Memory.create(real_character_id:morty_smith.id,parasite_id:bearded_lady.id)
 Memory.create(real_character_id:summer_smith.id,parasite_id:mr_meeseeks.id)
 Memory.create(real_character_id:mr_poopy_butthole.id,parasite_id:pencilvester.id)
 Memory.create(real_character_id:bird_person.id,parasite_id:hamurai.id)
 Memory.create(real_character_id:rick_sanchez.id,parasite_id:pencilvester.id)
 Memory.create(real_character_id:morty_smith.id,parasite_id:sleepygary.id)
 Memory.create(real_character_id:summer_smith.id,parasite_id:bearded_lady.id)
 Memory.create(real_character_id:mr_poopy_butthole.id,parasite_id:mr_meeseeks.id)
 Memory.create(real_character_id:bird_person.id,parasite_id:sleepygary.id)




# binding.pry 
puts "seeds!"