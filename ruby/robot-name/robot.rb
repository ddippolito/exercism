class Robot
  def initialize
    @name = ''
  end

  def name
    @name = Factory.assign_name
  end
end

class Factory
  def initialise
  end

  def self.assign_name
    new.generate
  end

  def generate
    model + serial
  end

  private

  def model
    ('a'..'z').to_a + :qa
  end
end
