def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(names)
  badges = []
  names.each{|name| badges << badge_maker(name)}
  badges
end

def assign_rooms(speakers)
  speakers.collect.each_with_index do |name, index| 
    "Hello, #{name}! You'll be assigned to room #{index+1}!"
  end

end

def printer(names)
  batch_badge_creator(names).each {|badge| puts badge}

  assign_rooms(names).each {|message| puts message}
end


