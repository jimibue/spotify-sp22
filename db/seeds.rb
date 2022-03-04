# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Artist.destroy_all
Author.destroy_all

mj = Artist.create(name:'Micheal Jackson', fans:23423)
bs = Artist.create(name:'Britney Spears', fans:3423)


# create with the Song Class
Song.create(name:'Thriller', play_count:12341234, artist_id: mj.id)
Song.create(name:'Hit me BABY', play_count:141234, artist_id: bs.id)

# create a song with instance of artist
# automatically sets artist_id, the instace calling the songs.create method
mj.songs.create(name:'Annie you ok', play_count:2341234)
bs.songs.create(name:'Toxix', play_count:21234)

puts "seeded DB"
puts "Artist size is #{Artist.all.size}"
p Artist.first
p Artist.all




Author.create(name:'Stephen King', age:55)
Author.create(name:'Frank Herbert', age:65)














