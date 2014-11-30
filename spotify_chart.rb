require 'open-uri'
require 'json'

class SpotifyChart

  def initialize(region_abbreviation)
    @region = region_abbreviation
    @base_url = "http://charts.spotify.com/api/charts"
  end

  def parse_data
    song_title = @data["tracks"].first["track_name"]
    band = @data["tracks"].first["artist_name"]
    album = @data["tracks"].first["album_name"]
    "'#{song_title}' by '#{band}' from the album '#{album}'"
  end

  def most_streamed
    @data = JSON.load(open("#{@base_url}/most_streamed/#{@region}/latest"))
    parse_data
  end

  def most_shared
    @data = JSON.load(open("#{@base_url}/most_shared/#{@region}/latest"))
    parse_data
  end
end