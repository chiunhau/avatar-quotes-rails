# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# lines = Line.all
# lines.each do |line|
#   en = line.episode_name.gsub('_', ' ').strip
#   ep = Episode.find_by(name: en)
#   line.episode_id = ep.id
#   line.save
# end

require 'csv'
# csv_text = File.read(Rails.root.join('lib', 'seeds', 'aang_episodes.csv'))
# csv = CSV.parse(csv_text)
# csv.each do |row|
#   e = Episode.new
#   e.name = row[0].gsub('_', ' ').strip
#   e.book_id = row[1].to_i
#   e.save
# end
csv_text = File.read(Rails.root.join('lib', 'seeds', 'aang.csv'))
csv = CSV.parse(csv_text)
en = ""
csv.each do |row|
  puts row
  if row.length == 1
    en = row[0].gsub('/wiki/Transcript:', '').strip
  elsif row.length == 2
    l = Line.new
    l.speaker = row[0].strip
    l.text = row[1].strip
    ep = Episode.find_by(name: en.gsub('_', ' ').strip)
    l.episode_id = ep.id
    l.episode_name = ep.name
    l.save
    puts "#{l.speaker}: #{l.text}; #{en}"
  end
end
