
Parasite.destroy_all
Memory.destroy_all
RealCharacter.destroy_all


rick = RealCharacter.create(name:"Rick")
morty = RealCharacter.create(name:"Morty")
summer = RealCharacter.create(name:"Summer")
mr_poopy_butthole = RealCharacter.create(name:"Mr. Poopybutthole")
bird = RealCharacter.create(name:"BirdPerson")

sleepygary = Parasite.create(name: "Sleepy Gary",
 story:"jerry's lover,He wears a nightgown with a long, droopy hat with blue and white stripes ",
 identity: "portrayed by the Alien Parasites ")
pencilvester = Parasite.create(name: "Pencilvester", 
 story:"He is an anthropomorphic pencil who is apparently great lifelong friends ",
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

 Memory.create(real_character_id:rick.id,parasite_id:hamurai.id)
 Memory.create(real_character_id:morty.id,parasite_id:bearded_lady.id)
 Memory.create(real_character_id:summer.id,parasite_id:mr_meeseeks.id)
 Memory.create(real_character_id:mr_poopy_butthole.id,parasite_id:pencilvester.id)
 Memory.create(real_character_id:bird.id,parasite_id:hamurai.id)
 Memory.create(real_character_id:rick.id,parasite_id:pencilvester.id)
 Memory.create(real_character_id:morty.id,parasite_id:sleepygary.id)
 Memory.create(real_character_id:summer.id,parasite_id:bearded_lady.id)
 Memory.create(real_character_id:mr_poopy_butthole.id,parasite_id:mr_meeseeks.id)
 Memory.create(real_character_id:bird.id,parasite_id:sleepygary.id)



# binding.pry 
puts "seeds!"