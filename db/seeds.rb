# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
 
puts "done seeding ..."
# Seed data for Heroes
heroes = [
  { name: "Kamala Khan", super_name: "Ms. Marvel" },
  { name: "Doreen Green", super_name: "Squirrel Girl" },
  { name: "Gwen Stacy", super_name: "Spider-Gwen" }
]

heroes.each do |hero|
  new_hero = Hero.create(name: hero[:name], super_name: hero[:super_name])

  # Seed data for Powers
  if new_hero.id == 1
    powers = [
      { name: "super strength", description: "gives the wielder super-human strengths" },
      { name: "flight", description: "gives the wielder the ability to fly through the skies at supersonic speed" }
    ]
  else
    powers = [
      { name: "invisibility", description: "gives the wielder the power to become invisible" },
      { name: "telekinesis", description: "gives the wielder the power to move objects with their mind" }
    ]
  end

  powers.each do |power|
    new_power = Power.create(name: power[:name], description: power[:description])
    HeroPower.create(hero_id: new_hero.id, power_id: new_power.id)
  end
end

