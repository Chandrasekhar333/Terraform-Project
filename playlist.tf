data "spotify_search_track" "Anirudh_Ravichander" {
  artist = "Anirudh_Ravichander"
}
 resource "spotify_playlist" "playlist" {
     name  = "Terraform playlist"
tracks=[data.spotify_search_track.Anirudh_Ravichander.tracks[5].id,
  data.spotify_search_track.Anirudh_Ravichander.tracks[2].id]
 }