# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#
#   def self.yell_happily(words)
#     words + "!!!! :DDD"
#   end
# end

module Shout
  def yell_crazily(words)
    puts words = "!blah@#blah$%^&blah*)"
  end
end

class Me
  include Shout
end

class You
  include Shout
end

#DRIVER CODE ***********
# puts Shout.yell_angrily("WTF")
# puts Shout.yell_happily("WTF")
me = Me.new
me.yell_crazily("I don't know what I'm doing!")

you = You.new
you.yell_crazily("Me neither!")
