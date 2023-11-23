// TODO: implement a service with something like
abstract class PlaylistService {
  // gets a complete reading of the current playlist state (for initialization)
  Playlist retrievePlaylist();

  // controls when songs are added to or removed from the playlist
  void sendPlaylist();
  void registerPlaylistHandler();

  // controls when a new song or different part of the song is selected to play
  void sendSeekEvent();
  void registerSeekEventHandler();
}

// type definitions (to prevent compiler errors)
class Playlist {}
