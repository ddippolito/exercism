class Robot
  def initialize
    @name = ''
  end

  def name
    @name ||= boot
  end

  private

  def boot
    @name = Factory.construct
  end

end

class Factory
  def self.construct
    new.generate
  end

  def generate
    model + serial
  end

  private

  def model
    ('A'..'Z').to_a
  end

  def serial
    ('1'..'9').to_a
  end
end
