module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words + "!!!! :DDD"
  end
end

#DRIVER CODE ***********
puts Shout.yell_angrily("WTF")
puts Shout.yell_happily("WTF")
