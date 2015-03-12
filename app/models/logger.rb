class Logger
  @@logger=nil;
  private_class_method :new;

  def Logger.create
    @@logger=new unless @@logger;
    @@logger;
  end
end