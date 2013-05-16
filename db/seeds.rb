# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

start_date = Time.zone.now - 20.days
end_date   = Time.zone.now

20.times do |offset|
  date = Time.zone.now - offset.days
  # Facebook
  rand(25).times do
    event = FacebookEvent.new
    event.created_at = date
    event.save
  end
  # Twitter
  rand(25).times do
    event = TwitterEvent.new
    event.created_at = date
    event.save
  end
end
