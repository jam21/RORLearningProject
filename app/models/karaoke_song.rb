class KaraokeSong<Song
  def initialize name, artist, duration, lyrics
    super name, artist, duration
    @lyrics=lyrics
  end
  def to_s
    super.to_s+", Lyrics: #{@lyrics}"
  end
end