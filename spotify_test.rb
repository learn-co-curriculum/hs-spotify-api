require 'rspotify'

artist = RSpotify::Artist.search("Spoon").first

@artist = artist.name
@image = artist.images.first
@popularity = artist.popularity

album = artist.albums.first
track = album.tracks.first

@song_preview = track.preview_url

puts "artist: #{@artist}"
puts "image_url: #{@image}"
puts "popularity: #{@popularity}"
puts "song_preview: #{@song_preview}"

