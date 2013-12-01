class Robot
  def name
    @name ||= Registry.add(NameGenerator.new)
  end

  def reset
    @name = nil
  end
end

class NameGenerator
  def pick(used_names)
    names.select { |name| !used_names.include? name.join }.take(1).to_a[0].join
  end

  private

  def names
    allowed_signs.repeated_permutation(5).lazy.select { |x| /\w{2}\d{3}/ =~ x.join }
  end

  def stuff
    name_strings.select { |x| /\w{2}\d{3}/ =~ x }
  end

  def name_strings
    allowed_signs.repeated_permutation(5).lazy.map(&:join)
  end

  def allowed_signs
    [*('A'..'Z'), *('a'..'z'), *(0..9)]
  end
end

class Registry
  class << self
    def add(generator)
      (names << generator.pick(names))[-1]
    end

    def names
      @names ||= []
    end
  end
end
