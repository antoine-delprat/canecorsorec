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
Booking.destroy_all
Release.destroy_all
Artist.destroy_all

puts "Creating artists..."

anopoli = Artist.create!(
  name: 'Ano Poli',
  description: "Ano Poli est un DJ, producteur et activiste de longue date. Il fusionne hard breaks, jersey, electro, jungle, Hardcore, Hyperpop... un mélange intense qu'il aime appeler 'Hybrid Club'. Aujourd’hui à la tête de ses différents projets, Cane Corso Records et Rayquaza, Ano Poli va encore plus loin dans ses explorations. Il y rassemble l'avant garde de cette nouvelle scène au carrefour des musiques électroniques. Sur scène, Ano Poli s’affranchit de toutes barrières musicales. C'est sans complexe ou mépris de classe qu'il mène son public à travers ses références vastes, nichées ou non. Les étiquettes disparaissent, seule reste la danse.",
  performance: 'DJ Set',
  city: 'Nantes, France',
  label_list: 'Cane Corso Records, Multi-Pass Records, Welter Records',
  soundcloud_link: 'https://soundcloud.com/anopolimusic',
  instagram_link: 'https://www.instagram.com/anopoli/',
  facebook_link: 'https://www.facebook.com/anopolimusic/',
  youtube_link: 'https://www.youtube.com/channel/UCXiIe_k1ss0D_tMsh6HPaDA',
  spotify_link: 'https://open.spotify.com/artist/6dLif3QtYYxoUlwQEMnpJf?si=FQWifOmoRweIpSo4Zd9u7Q',
  video_link: 'https%3A//api.soundcloud.com/tracks/1379409436'
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
  video_link: 'https://www.youtube.com/embed/8mrfkwMoOuw'
)
file = File.open(Rails.root.join("db/seeds/artists/alder.jpeg"))
alder.avatar.attach(io: file, filename: "alder.jpeg", content_type: "image/jpeg")

beavs = Artist.create!(
  name: 'Beavs',
  description: "Depuis plusieurs années, Beavs enchaîne productions et gigs au quatre coins de la France. Fortement influencé par la culture anglaise et toujours à la recherche de la communion avec le dancefloor, ses sets sont un savant mélange de breaks percussifs et de gems hybrid club où la fête prend tout son sens. Ses dernières sorties sur les labels Cane Corso et Tansiut Tone attestent de ses qualités de producteur, avec des tracks aux côtés d'artistes comme Voiron, Adam BFD et DJ Physical.",
  performance: 'DJ Set',
  city: 'Nantes, France',
  label_list: 'Cane Corso Records, Tansiut Tone',
  soundcloud_link: 'https://soundcloud.com/beavs1',
  instagram_link: 'https://www.instagram.com/beavs808',
  facebook_link: 'https://www.facebook.com/therealbeavs',
  youtube_link: '',
  spotify_link: 'https://open.spotify.com/artist/3oZQ25sAyrzn9McsFL3BRF?si=aTt0OpVYTm-7XFJhHxNqZg',
  video_link: 'https%3A//api.soundcloud.com/tracks/1392106825'
)
file = File.open(Rails.root.join("db/seeds/artists/beavs.jpeg"))
beavs.avatar.attach(io: file, filename: "beavs.jpeg", content_type: "image/jpeg")

dlt = Artist.create!(
  name: 'DL-T',
  description: "DL-T a longtemps squatté les clubs et les warehouses parisiens à la recherche d'énergie et d'inspiration. DJ et co-fondateur du label Cane Corso, le nantais aime jouer une musique explosive et imprévisible. Entre Micro, Breaks et UK Bass, il prend plaisir à emmêler les genres dans des sets vibrants et polyvalents.",
  performance: 'DJ Set',
  city: 'Nantes, France',
  label_list: 'Cane Corso Records',
  soundcloud_link: 'https://soundcloud.com/dl-t_music',
  instagram_link: 'https://www.instagram.com/dlt.dj',
  facebook_link: 'https://www.facebook.com/dlt.musique/',
  youtube_link: '',
  spotify_link: '',
  video_link: 'https%3A//api.soundcloud.com/tracks/1470183301'
)
file = File.open(Rails.root.join("db/seeds/artists/dlt.jpg"))
dlt.avatar.attach(io: file, filename: "dlt.jpg", content_type: "image/jpg")

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
  soundcloud_link: 'https%3A//api.soundcloud.com/playlists/1523639965',
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
  soundcloud_link: 'https%3A//api.soundcloud.com/playlists/1554681052',
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
  soundcloud_link: 'https%3A//api.soundcloud.com/playlists/1619572429',
  youtube_link: '',
)
file = File.open(Rails.root.join("db/seeds/releases/aeons2.jpeg"))
aeons2.photo.attach(io: file, filename: "aeons2.jpeg", content_type: "image/jpeg")

# missing: bookings, contacts, events, products

puts "Seeds finished!"
