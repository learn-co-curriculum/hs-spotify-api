require 'rspotify'

artist = RSpotify::Artist.search("Spoon").first

@artist = artist.name
artist_image = artist.images.first
@artist_image_url = artist_image["url"]
@popularity = artist.popularity

album = artist.albums.first
track = album.tracks.first

@song = track.name
@song_preview = track.preview_url

puts "artist: #{@artist}"
puts "image hash: #{artist_image}"
puts "image url: #{@artist_image_url}"
puts "popularity: #{@popularity}"
puts "song: #{@song}"
puts "song_preview: #{@song_preview}"

