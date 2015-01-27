require 'json'
require 'open-uri'

class SpotifyChart

  # replace the ? with the URL that is used to get Spotify's most streamed tracks
  # Hint: Look at the first URL under the help section of the README
  BASE_URL = "http://charts.spotify.com/api/tracks/most_streamed"

  def get_url(region)
    # return a string that is the BASE_URL/region/weekly/latest
    # Hint: use string interpolation!
  end

  def get_json(url)
    # load json given a url here
    # Hint: take a look at the first link under the references section of the README. 
  end

  def get_first_track_info(music_hash)
    # example music_hash:
    # {  
    #   "tracks" => [  
    #     {  
    #       "date"         =>"2014-09-14",
    #       "track_name"   =>"All About That Bass",
    #       "artist_name"  =>"Meghan Trainor",
    #       "album_name"   =>"Title"
    #     },
    #     {  
    #       "date"         =>"2014-09-14",
    #       "track_name"   =>"Break Free",
    #       "artist_name"  =>"Ariana Grande",
    #       "album_name"   =>"Break Free"
    #     }
    #   ]
    # }

    # given a hash, like the one above, this method should return a string like this:
    # <track name> by <artist name> from the album <album name>
  
    # for the first track in the tracks array
  end


  def most_streamed(region)
    # call the #get_url method here and store it in a variable

    # call the #get_json method here, using the url that was returned by #get_url
    # store the the results of #get_json in a variable

    # finally, call #get_first_track_info 
    # the argument for this method should be the hash that #get_json returns 

  end

end
