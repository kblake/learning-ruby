class User
  def say_hello
    puts "hello"
  end
end

u = User.new
u.say_hello

module MoreUserStuff
  def say_hello
    puts "hola"
  end
end

u.extend(MoreUserStuff)
u.say_hello