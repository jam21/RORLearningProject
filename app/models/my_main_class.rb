require_relative 'song'
require_relative 'karaoke_song'
require_relative 'song_list'
require_relative 'logger'
class MyMainClass
  def dealBlock a,b,&block
    puts a.to_s
    puts block.call
    puts b.to_s
  end
  MyMainClass.new.dealBlock 10,:a=>"name",:b=>"again",:c=>"goodname" do
    puts "In block"
  end
  # aSong=KaraokeSong.new('Song1','Singer1',10,'abcd')
  # secondSong=KaraokeSong.new('Song1','Singer1',20000,'abcd')
  # aSong.duration =12;
  # puts aSong.duration
  # puts aSong.play;
  # secondSong.play;
  # puts aSong.play;
  # puts SongList.isTooLong aSong;
  # puts SongList.isTooLong secondSong;
  # puts Logger.create.to_s;
  # puts Logger.create.to_s;
end