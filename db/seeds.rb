# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

all_types = %w[Bug Dark Dragon Electric Fairy Fighting Fire Flying
    Ghost Grass Ground Ice Normal Psychic Poison Rock Steel Water]

types = Type.create(all_types.map{ |t| {name: t} })

pika = Pokemon.create(name: 'Pikachu')
pika.types << Type.find(1)

bulb = Pokemon.create(name: 'Bulbasaur')
bulb.types << Type.find(1)

squirt = Pokemon.create(name: 'Squirtle')
squirt.types << Type.find(1)

gas = Pokemon.create(name: 'Gatsby')
gas.types << Type.find(1)

luna = Pokemon.create(name: 'Luna')
luna.types << Type.find(1)

