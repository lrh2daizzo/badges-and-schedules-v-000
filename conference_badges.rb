def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(array)
  badge_messages = []
  array.each{|name| badge_messages << badge_maker(name)}
  badge_messages
end

def assign_rooms(array)
  array.each_with_index.collect {|name, index|
    "Hello, #{name}! You'll be assigned to room #{index+1}!"}
end

def printer(array)
  batch_badge_creator(array).each {|badge| puts badge}

  assign_rooms(array).each {|room| puts room}
end
