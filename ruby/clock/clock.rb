class Clock
  MINUTES_PER_DAY = 1440
  MINUTES_PER_HOUR = 60

  def initialize(hour: 0, minute: 0)
    @total_minutes = (hour * MINUTES_PER_HOUR + minute) % MINUTES_PER_DAY
  end

  def to_s
    "%02d:%02d" % total_minutes.divmod(60)
  end

  def +(clock)
    self.class.new(minute: total_minutes + clock.total_minutes)
  end

  def -(clock)
    self.class.new(minute: total_minutes - clock.total_minutes)
  end

  def ==(clock)
    clock.total_minutes == total_minutes
  end

  protected

  attr_reader :total_minutes
end