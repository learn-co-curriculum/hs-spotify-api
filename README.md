---
tags: kids, ruby, spotify, messaging, apis
languages: ruby
level: 1
type: Intro, Documentation
---

## Spotify

Spotify has a super cool [API](https://developer.spotify.com/) that can be used to access Spotify's music and info on artists.

This tutorial will walk you through how to use the [RSpotify gem](https://github.com/guilhermesad/rspotify) to connect to the Spotify API and pull song, artist or album info and create a simple HTML5 audio player that plays a sample of a song.

### Set Up

Add `gem 'rspotify'` to your project's Gemfile and run `bundle install` to install the gem.

### Get Music

To get information related to an artist:

```ruby
artist = RSpotify::Artist.search("artist name")

artist.name # => artists name
artist.images # => an array of hashes with image url and info
artist.albums # => albums array
artist.top_tracks(country) # => array of top tracks by country
artist.genres # => array of genres the artist is associated with.
artist.popularity # => popularity of the artist between 0 and 100, with 100 being the most popular
```

If you want to see search for artists that are similar to that artist you can also use this method:

```ruby
artist.related_artists # => array of similar artists
```

You can piggy back on the search above to pull information from an album like this:

```ruby
album = artist.albums.first

album.name # => track name
album.images # => images from the album
album.popularity # => popularity of the album between 0 and 100, with 100 being the most popular
```

And you can piggy back on that search to pull track info like this:

```ruby
track = album.track.first

track.popularity # => popularity of the track between 0 and 100, with 100 being the most popular
track.preview_url # => a link to a 30 second preview (MP3 format) of the track
```

You can also specifically search for albums and tracks like this

```ruby
albums = RSpotify::Album.search("album name")
tracks = RSpotify::Track.search("track name")
```

Check out the code in `spotify_test.rb` for an example of how you can use the gem. You can run `ruby spotify_test.rb` to see the results of the RSpotify queries. Or copy and paste the code into a route in your application controller and point it to a view with the HTML5 audio tags below. If you set up everything properly you should see the artist name, image and an audio player playing one of the artists songs.

```erb
<h1><%= @song %> by <%= @artist %></h1>
<img src="<%= @artist_image_url %>" height="400" width="400" >
<br>
<audio controls src= <%= @song_preview %>></audio>
```
