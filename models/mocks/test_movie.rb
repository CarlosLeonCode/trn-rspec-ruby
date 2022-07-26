class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
  end

  def act
    'This is my moment'
  end

  def fall_off_leadder
    'Call my agent!, No way'
  end

  def light_on_fire
    false
  end
end

class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      actor.act
      actor.fall_off_leadder
      actor.light_on_fire
    end
  end
end
