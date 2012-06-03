def conversation
  puts "Hello"
  yield
  puts "Goodbye"
end

conversation {puts "Good to meet you!"}

def five_times
  1.upto(5) do |count|
    yield count
  end
end

five_times do |n|
  puts "#{n} situps"
  puts "#{n} pushups"
  puts "#{n} chinups"
end



def n_times(n)
  1.upto(n) do |count|
    yield count
  end
end

n_times(2) do |n|
  puts "#{n} situps"
  puts "#{n} pushups"
  puts "#{n} chinups"
end
