class Bob
  def hey(msg)
    switch(
      shouting: -> {'Woah, chill out!'},
      question: -> {'Sure,'},
      silent: -> {'Fine. Be that way'}
    )
  end

  private

  def switch(hash)
    hash.each { |method, proc| p "#{method}    #{send(method)}"}
    hash.each { |method, proc| return proc[] if send(method) }
    yield if block_given?
  end

  def shouting
    msg == msg.upcase && !msg.strip.empty?
  end

  def question
    msg[-1, 1] == "?"
  end

  def silent
    msg.strip.empty?
  end
end
