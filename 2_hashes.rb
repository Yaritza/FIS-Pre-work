#2.Hashes///////////////////
instructor = {:name=>"Ashley", :age=>27}
instructor[:location] = "NYC"

instructor.each do |key, value|
    print "#{key}: #{value}, "
end

puts " \n#{instructor[:name]}" #why can't return replace the puts? doesn't work here  and yields <main>': unexpected return (LocalJumpError)
puts instructor.key(27)
