resource "spotify_playlist" "Bollywood" {
  name = "Bollywood"
  tracks = [
    "6mdLX10dvBb7rGYbMXpKzz"
  ]
}

# use data block to create a search track
data "spotify_search_track" "eminem" {
  artist = "Eminem"
  #limit = 3
}

resource "spotify_playlist" "slimShady" {
  name = "Slim Shady"
  tracks = [ data.spotify_search_track.eminem.tracks[0].id,
  data.spotify_search_track.eminem.tracks[1].id,
  data.spotify_search_track.eminem.tracks[2].id ]
  #tracks = flatten([ data.spotify_search_track.eminem.tracks[*].id ])
}