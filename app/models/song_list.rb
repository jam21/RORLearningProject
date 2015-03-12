class SongList
  MaxTime = 5*60;
  def SongList.isTooLong aSong
    aSong.duration>MaxTime;
  end
end