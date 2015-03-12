class Song
  @@plays=0
  attr_reader :name,:artist,:duration;
  attr_writer :name,:artist,:duration;
  def initialize name,artist,duration
    @name=name;
    @artist=artist;
    @duration=duration;
    @plays=0;
  end

  def play
    @plays+=1;
    @@plays+=1;
    "This  song: #@plays plays. Total #@@plays plays."
  end

  def to_s
    "Song{ Name: #{@name}, Artist: #{@artist}, Duration: #{@duration}}"
  end
end