Band.destroy_all
b1 = Band.create!(name: 'The Beatles')
b2 = Band.create!(name: 'The Kinks')
b3 = Band.create!(name: 'Modest Mouse')


Album.destroy_all
a1 = Album.create!(band_id: b1.id, live_or_studio: 'studio',album_name: 'white album')
a2 = Album.create!(band_id: b1.id, album_name: 'help!')
a3 = Album.create!(band_id: b1.id, live_or_studio: 'studio',album_name: 'let it be')
a4 = Album.create!(band_id: b2.id, live_or_studio: 'studio',album_name: 'arthur (or the...)')
a5 = Album.create!(band_id: b3.id, live_or_studio: 'studio',album_name: 'everywhere and his nasty...')
a6 = Album.create!(band_id: b3.id, live_or_studio: 'live',album_name: 'baron von bs')

Track.destroy_all
t1 = Track.create!(track_title: 'rock racoon', album_id: a1.id, lyrics: 'abc123')
t2 = Track.create!(track_title: 'dear prudence', album_id: a1.id, lyrics: 'abc123')
t3 = Track.create!(track_title: 'help', album_id: a2.id, lyrics: 'abc123')
t4 = Track.create!(track_title: 'across the universe', album_id: a3.id, lyrics: 'abc123')
t5 = Track.create!(track_title: 'victoria', album_id: a4.id, lyrics: 'abc123')
t6 = Track.create!(track_title: 'so much beauty in dirt', album_id: a5.id, lyrics: 'abc123')
t7 = Track.create!(track_title: 'here it comes', album_id: a5.id, lyrics: 'abc123')
t8 = Track.create!(track_title: 'doin the cockroach', album_id: a6.id, bonus_or_regular: 'bonus', lyrics: 'abc123')
