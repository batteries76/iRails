# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

artists = [
    {
        name: "The Smiths",
        band: true,
        active: false
    },
    {
        name: "Morrissey",
        band: false,
        active: true
    },
    {
        name: "Faith No More",
        band: true,
        active: true
    }
]

artists.each do |artist|
    Artist.create(artist)
end

albums = [
    {
        artist_id: 1,
        title: "Strangeways Here We Come",
        length: 37,
        year: 1987,
    },
    {
        artist_id: 1,
        title: "Louder Than Bombs",
        length: 73,
        year: 1987
    },
    {
        artist_id: 1,
        title: "The Sound of The Smiths",
        length: 73,
        year: 2009
    },
    {
        artist_id: 1,
        title: "Hatful of Hollow",
        length: 56,
        year: 1984
    },
    {
        artist_id: 2,
        title: "Bona Drag",
        length: 56,
        year: 1990
    },
    {
        artist_id: 2,
        title: "Vauxhall and I",
        length: 40,
        year: 1994
    },
    {
        artist_id: 2,
        title: "Your Arsenal",
        length: 40,
        year: 1992
    },
    {
        artist_id: 2,
        title: "Years of Refusal",
        length: 43,
        year: 2009
    },
    {
        artist_id: 3,
        title: "Angel Dust",
        length: 58,
        year: 1992
    },
    {
        artist_id: 3,
        title: "King for a Day, Fool for a Lifetime",
        length: 57,
        year: 1995
    }
]

albums.each do |album|
    Album.create(album)
end

file_path = Rails.root + 'app/assets/images/albums'

Album.find(1).album_image.attach(io: File.open(file_path + 'strangeways.jpeg'), filename: 'strangeways.jpeg')
Album.find(2).album_image.attach(io: File.open(file_path + 'louderbombs.jpeg'), filename: 'louderbombs.jpeg')
Album.find(3).album_image.attach(io: File.open(file_path + 'soundofsmiths.jpeg'), filename: 'soundofsmiths.jpeg')
Album.find(4).album_image.attach(io: File.open(file_path + 'hatful.jpeg'), filename: 'hatful.jpeg')
Album.find(5).album_image.attach(io: File.open(file_path + 'bonadrag.jpeg'), filename: 'binadrag.jpeg')
Album.find(6).album_image.attach(io: File.open(file_path + 'vauxhall.jpeg'), filename: 'vauxhall.jpeg')
Album.find(7).album_image.attach(io: File.open(file_path + 'yourarsenal.jpeg'), filename: 'yourarsenal.jpeg')
Album.find(8).album_image.attach(io: File.open(file_path + 'yearsrefusal.jpeg'), filename: 'yearsrefusal.jpeg')
Album.find(9).album_image.attach(io: File.open(file_path + 'angeldust.jpeg'), filename: 'angeldust.jpeg')
Album.find(10).album_image.attach(io: File.open(file_path + 'kingforaday.jpeg'), filename: 'kingforaday.jpeg')

file_path = Rails.root + 'app/assets/images/artists'

Artist.find(2).artist_images.attach(io: File.open(file_path + 'morrissey-main.jpeg'), filename: 'morrissey-main.jpeg')
Artist.find(2).artist_images.attach(io: File.open(file_path + 'morrissey2.jpeg'), filename: 'morrissey2.jpeg')
Artist.find(2).artist_images.attach(io: File.open(file_path + 'morrissey3.jpeg'), filename: 'morrissey3.jpeg')
Artist.find(2).artist_images.attach(io: File.open(file_path + 'morrissey4.jpeg'), filename: 'morrissey4.jpeg')
Artist.find(1).artist_images.attach(io: File.open(file_path + 'smiths1.jpeg'), filename: 'smiths1.jpeg')
Artist.find(1).artist_images.attach(io: File.open(file_path + 'smiths2.jpeg'), filename: 'smiths2.jpeg')
Artist.find(1).artist_images.attach(io: File.open(file_path + 'smiths3.jpeg'), filename: 'smiths3.jpeg')
Artist.find(1).artist_images.attach(io: File.open(file_path + 'smiths4.jpeg'), filename: 'smiths4.jpeg')
Artist.find(1).artist_images.attach(io: File.open(file_path + 'smiths5.jpeg'), filename: 'smiths5.jpeg')
Artist.find(1).artist_images.attach(io: File.open(file_path + 'smiths6.jpeg'), filename: 'smiths6.jpeg')
Artist.find(1).artist_images.attach(io: File.open(file_path + 'smiths7.jpeg'), filename: 'smiths7.jpeg')
Artist.find(1).artist_images.attach(io: File.open(file_path + 'smiths8.jpeg'), filename: 'smiths8.jpeg')
Artist.find(1).artist_images.attach(io: File.open(file_path + 'smiths9.jpeg'), filename: 'smiths9.jpeg')
Artist.find(1).artist_images.attach(io: File.open(file_path + 'smiths10.jpeg'), filename: 'smiths10.jpeg')
Artist.find(3).artist_images.attach(io: File.open(file_path + 'fnm1.jpeg'), filename: 'fnm1.jpeg')
Artist.find(3).artist_images.attach(io: File.open(file_path + 'fnm2.jpeg'), filename: 'fnm2.jpeg')
Artist.find(3).artist_images.attach(io: File.open(file_path + 'fnm3.jpeg'), filename: 'fnm3.jpeg')
Artist.find(3).artist_images.attach(io: File.open(file_path + 'fnm4.jpeg'), filename: 'fnm4.jpeg')
Artist.find(3).artist_images.attach(io: File.open(file_path + 'fnm5.jpeg'), filename: 'fnm5.jpeg')
Artist.find(3).artist_images.attach(io: File.open(file_path + 'fnm6.jpeg'), filename: 'fnm6.jpeg')
Artist.find(3).artist_images.attach(io: File.open(file_path + 'fnm7.jpeg'), filename: 'fnm7.jpeg')
Artist.find(3).artist_images.attach(io: File.open(file_path + 'fnm8.jpeg'), filename: 'fnm8.jpeg')

puts "Added IMAGES to the ARTISTS"

tracks = [
    {
        title: "Panic",
        length: 140,
        artist_id: 1
    },
    {
        title: "This Charming Man",
        length: 164,
        artist_id: 1
    },
    {
        title: "William, It Was Really Nothing",
        length: 136,
        artist_id: 1
    },
    {
        title: "How Soon Is Now?",
        length: 407,
        artist_id: 1
    },
    {
        title: "Shoplifters of the World Unite",
        length: 178,
        artist_id: 1
    },
    {
        title: "Hand In Glove",
        length: 197,
        artist_id: 1
    },
    {
        title: "Paint a Vulgar Picture",
        length: 335,
        artist_id: 1
    },
    {
        title: "Stop Me If You Think You've Heard This One Before",
        length: 212,
        artist_id: 1
    },
    {
        title: "Suedehead",
        length: 234,
        artist_id: 2
    },
    {
        title: "You'll Have To Find Out For Yourself",
        length: 140,
        artist_id: 2
    },
    {
        title: "The More You Ignore Me, The Closer I Get",
        length: 224,
        artist_id: 2
    },
    {
        title: "Piccadili Palare",
        length: 208,
        artist_id: 2
    },
    {
        title: "The Last of the Famous International Playboys",
        length: 220,
        artist_id: 2
    },
    {
        title: "We Hate It When Our Friends Become Successful",
        length: 149,
        artist_id: 2
    },
    {
        title: "The Gentle Art of Making Enemies",
        length: 208,
        artist_id: 3
    },
    {
        title: 	"Evidence",
        length: 293,
        artist_id: 3
    },
    {
        title: 	"Get Out",
        length: 137,
        artist_id: 3
    },
    {
        title: 	"A Small Victory",
        length: 297,
        artist_id: 3
    },
    {
        title: 	"Everything's Ruined",
        length: 273,
        artist_id: 3
    }
]

tracks.each do |track|
    new_track = Track.create(track)
end

Album.find(2).tracks << Track.find(1)
Album.find(3).tracks << Track.find(1)
Album.find(2).tracks << Track.find(2)
Album.find(3).tracks << Track.find(2)
Album.find(4).tracks << Track.find(2)
Album.find(2).tracks << Track.find(3)
Album.find(3).tracks << Track.find(3)
Album.find(4).tracks << Track.find(3)
Album.find(2).tracks << Track.find(4)
Album.find(3).tracks << Track.find(4)
Album.find(4).tracks << Track.find(4)
Album.find(2).tracks << Track.find(5)
Album.find(3).tracks << Track.find(5)
Album.find(2).tracks << Track.find(6)
Album.find(3).tracks << Track.find(6)
Album.find(4).tracks << Track.find(6)
Album.find(1).tracks << Track.find(7)
Album.find(1).tracks << Track.find(8)
Album.find(5).tracks << Track.find(9)
Album.find(6).tracks << Track.find(10)
Album.find(6).tracks << Track.find(11)
Album.find(5).tracks << Track.find(12)
Album.find(5).tracks << Track.find(13)
Album.find(7).tracks << Track.find(14)
Album.find(10).tracks << Track.find(15)
Album.find(10).tracks << Track.find(16)
Album.find(10).tracks << Track.find(17)
Album.find(9).tracks << Track.find(18)
Album.find(9).tracks << Track.find(19)

puts "The SEED FILE ran, and was seeded with ARTISTS, ALBUMS, AND TRACKS"

# Setting up roles

roles = [
    {
        privilege: 'Admin',
        description: "Can do whatever they like"
    },
    {
        privilege: 'Standard',
        description: "Can have a poke around, but can't do much"
    },
    {
        privilege: 'Premium',
        description: "Can do some extra things"
    }
]

roles.each do |role|
    Role.create(role)
end

puts "ADDED THE ROLES"

# add three users to be able to play around with the roles
users = [
    {
        email: "a@a.com",
        password: "123456"
    },
    {
        email: "s@s.com",
        password: "123456"
    },
    {
        email: "p@p.com",
        password: "123456"
    }
]

users.each do |user|
    User.create!(user)
end

user = User.find(1)
user.role = Role.find(1)
user.save!
user = User.find(2)
user.role = Role.find(2)
user.save!
user = User.find(3)
user.role = Role.find(3)
user.save!

puts "USERS WERE ADDED"
puts "a@a.com is an admin"
puts "s@s.com is a standard user"
puts "p@p.com is a premium user"
puts "All the passwords are 123456"