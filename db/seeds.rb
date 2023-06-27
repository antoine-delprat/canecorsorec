# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "date"

puts "Cleaning database"
Event.destroy_all
Product.destroy_all
Contact.destroy_all
Booking.destroy_all
Release.destroy_all
Artist.destroy_all

puts "Creating artists..."

anopoli = Artist.create!(
  name: 'Ano Poli',
  description: "Le projet Ano Poli a démarré il y a quelques années à Chypre. Il est le fruit d’une évolution, d’une continuité évidente pour Paul. Musicien, mélomane, digger et surtout animé d’une passion dévorante pour l’émotion qui se dégage de la musique. Très vite, il se retrouve à mettre en forme sa diversité musicale sans vouloir se contenter d’une case, d’une étiquette. Des bases du disco à la house chaleureuse, de la wave à l’acid, du baile funk à la trap… On peut le voir s’émerveiller dans différents univers pour le compte de plusieurs collectifs: SuperBoom / Big City Life / Krumpp / Block Party Prod. Avec Keep On, il créé Favelas, une résidence Baile Trap qui deviendra très vite un duo de producteurs qui veulent transmettre leur passion du Baile Funk, mêlé à des sonorités heavy trap.",
  performance: 'DJ Set',
  city: 'Nantes, France',
  label_list: 'Cane Corso Records, Multi-Pass Records, Welter Records',
  soundcloud_link: 'https://soundcloud.com/anopolimusic',
  instagram_link: 'https://www.instagram.com/anopoli/',
  facebook_link: 'https://www.facebook.com/anopolimusic/',
  youtube_link: 'https://www.youtube.com/channel/UCXiIe_k1ss0D_tMsh6HPaDA',
  spotify_link: 'https://open.spotify.com/artist/6dLif3QtYYxoUlwQEMnpJf?si=FQWifOmoRweIpSo4Zd9u7Q',
  video_link: 'https://www.youtube.com/watch?v=PvfyX9V0UIc'
)
file = File.open(Rails.root.join("db/seeds/artists/anopoli.jpeg"))
anopoli.avatar.attach(io: file, filename: "anopoli.jpeg", content_type: "image/jpeg")

alder = Artist.create!(
  name: 'Alder',
  description: "Lorem ipsum dolor sit amet. Ab obcaecati numquam et asperiores omnis ab voluptatem nihil ad commodi dolor. Eos error rerum et consequatur sequi sed harum magnam est impedit corporis aut explicabo quidem est temporibus tempora. Ut officia sint quo autem quibusdam ex quaerat laboriosam sed delectus quibusdam. Quo consequatur quis et nihil consequatur aut tenetur omnis cum veritatis odit et voluptas doloremque At quod iure a voluptatibus perferendis.",
  performance: 'Live',
  city: 'Nantes, France',
  label_list: 'Cane Corso Records',
  soundcloud_link: 'https://soundcloud.com/alderalder',
  instagram_link: 'https://www.instagram.com/acidalder',
  facebook_link: 'https://www.facebook.com/acidalder',
  youtube_link: '',
  spotify_link: 'https://open.spotify.com/artist/6kd75iO1KCGn2xdLYzKwUU?si=561SDegpRgiiabsvPO3ZVg',
  video_link: 'https://www.youtube.com/watch?v=8mrfkwMoOuw'
)
file = File.open(Rails.root.join("db/seeds/artists/alder.jpeg"))
alder.avatar.attach(io: file, filename: "alder.jpeg", content_type: "image/jpeg")

beavs = Artist.create!(
  name: 'Beavs',
  description: "Lorem ipsum dolor sit amet. Ab obcaecati numquam et asperiores omnis ab voluptatem nihil ad commodi dolor. Eos error rerum et consequatur sequi sed harum magnam est impedit corporis aut explicabo quidem est temporibus tempora. Ut officia sint quo autem quibusdam ex quaerat laboriosam sed delectus quibusdam. Quo consequatur quis et nihil consequatur aut tenetur omnis cum veritatis odit et voluptas doloremque At quod iure a voluptatibus perferendis.",
  performance: 'DJ Set',
  city: 'Nantes, France',
  label_list: 'Cane Corso Records, Tansiut Tone',
  soundcloud_link: 'https://soundcloud.com/beavs1',
  instagram_link: 'https://www.instagram.com/beavs808',
  facebook_link: 'https://www.facebook.com/therealbeavs',
  youtube_link: '',
  spotify_link: 'https://open.spotify.com/artist/3oZQ25sAyrzn9McsFL3BRF?si=aTt0OpVYTm-7XFJhHxNqZg',
  video_link: 'https://www.youtube.com/watch?v=6FqFcsycyd8'
)
file = File.open(Rails.root.join("db/seeds/artists/beavs.jpeg"))
beavs.avatar.attach(io: file, filename: "beavs.jpeg", content_type: "image/jpeg")

various = Artist.create!(
  name: 'Various Artists',
  description: "Lorem ipsum dolor sit amet. Ab obcaecati numquam et asperiores omnis ab voluptatem nihil ad commodi dolor. Eos error rerum et consequatur sequi sed harum magnam est impedit corporis aut explicabo quidem est temporibus tempora. Ut officia sint quo autem quibusdam ex quaerat laboriosam sed delectus quibusdam. Quo consequatur quis et nihil consequatur aut tenetur omnis cum veritatis odit et voluptas doloremque At quod iure a voluptatibus perferendis.",
  performance: 'DJ Set',
  city: 'Nantes, France',
  label_list: 'Cane Corso Records',
  soundcloud_link: '',
  instagram_link: '',
  facebook_link: '',
  youtube_link: '',
  spotify_link: '',
  video_link: ''
)
file = File.open(Rails.root.join("db/seeds/artists/various.jpeg"))
various.avatar.attach(io: file, filename: "various.jpeg", content_type: "image/jpeg")

puts "Creating releases..."

premiereportee = Release.create!(
  artist: various,
  name: "V.A Vol.1 : Première Portée",
  release_date: DateTime.new(2022, 11, 11),
  release_format: 'Compilation',
  style: 'Electronic music',
  bandcamp_link: 'https://canecorsorecords.bandcamp.com/album/v-a-vol-1-premiere-portee',
  spotify_link: 'https://open.spotify.com/album/0DBhpT8VXYrv7w5MR844Hq?si=7oxrojaWRziuAj8YVTJhYA',
  soundcloud_link: 'https://soundcloud.com/canecorsorecords/sets/premi-re-port-e-v-a-vol-1-cane',
  youtube_link: '',
)
file = File.open(Rails.root.join("db/seeds/releases/premiereportee.jpeg"))
premiereportee.photo.attach(io: file, filename: "premiereportee.jpeg", content_type: "image/jpeg")

aeons1 = Release.create!(
  artist: alder,
  name: "AEONS Part.1",
  release_date: DateTime.new(2022, 1, 13),
  release_format: 'EP',
  style: 'Acid',
  bandcamp_link: 'https://canecorsorecords.bandcamp.com/album/aeons-part-1',
  spotify_link: 'https://open.spotify.com/album/5RlQHAzd9hMtRg0voOePA6?si=QAMzXUCqTL2Xg3nExZjBoA',
  soundcloud_link: 'https://soundcloud.com/canecorsorecords/sets/alder-aeons-part-1-cane-corso',
  youtube_link: '',
)
file = File.open(Rails.root.join("db/seeds/releases/aeons1.jpeg"))
aeons1.photo.attach(io: file, filename: "aeons1.jpeg", content_type: "image/jpeg")

aeons2 = Release.create!(
  artist: alder,
  name: "AEONS Part.2",
  release_date: DateTime.new(2022, 5, 19),
  release_format: 'EP',
  style: 'Acid',
  bandcamp_link: 'https://canecorsorecords.bandcamp.com/album/aeons-part-2',
  spotify_link: 'https://open.spotify.com/album/0csyu4OvikmnsdXJnEm46p?si=-N05Mr2tSbWSZNcViq3zsw',
  soundcloud_link: 'https://soundcloud.com/canecorsorecords/sets/alder-aeons-part-2-cane-corso',
  youtube_link: '',
)
file = File.open(Rails.root.join("db/seeds/releases/aeons2.jpeg"))
aeons2.photo.attach(io: file, filename: "aeons2.jpeg", content_type: "image/jpeg")

# missing: bookings, contacts, events, products

puts "Seeds finished!"
