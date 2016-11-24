# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

sports = Sport.create([{name: "tennis"}, {name: "badminton"}])
levels = Level.create([{name: "beginner"}, {name: "intermediate"}, {name: "advanced"}])


matches = Match.create([{title: "panda1", sport_id: sports.first}, {title: "panda2", sport_id: sports.last}, {title: "panda3", sport_id: sports.first}, {title: "panda4", sport_id: sports.last}, {title: "panda5", sport_id: sports.first}, {title: "panda6", sport_id: sports.last}])

m1 = matches.first
m1.levels << levels.first

matches.each do |m|
  if m.id.odd?
    m.levels << levels.last
  else
    m.levels << levels.first
  end
end
