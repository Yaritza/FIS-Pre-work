school = {
  :name => "Happy Funtime School",
  :location => "NYC",
  :instructors => [
    {:name=>"Blake", :subject=>"being awesome" },
    {:name=>"Ashley", :subject=>"being better than blake"},
    {:name=>"Jeff", :subject=>"karaoke"}
  ],
  :students => [
    {:name => "Marissa", :grade => "B"},
    {:name=>"Billy", :grade => "F"},
    {:name => "Frank", :grade => "A"},
    {:name => "Sophie", :grade => "C"}
  ]
}


#1 Arrays.rb

array = ["Blake","Ashley","Jeff"]

array << "Ruby_loving"

array.each {|element| print " #{element}"}

puts array[1] #cannot do a "return array[1]''

puts array.index("Jeff")   #cannot do a ''return for array[2]''





#1. Arrays//////////////////
array = ["Blake","Ashley","Jeff"]

array << "Ruby_loving"

array.each {|element| print " #{element}"}

puts array[1] #cannot do a "return array[1]''

puts array.index("Jeff")   #cannot do a ''return for array[2]''

#2.Hashes///////////////////
instructor = {:name=>"Ashley", :age=>27}
instructor[:location] = "NYC"

instructor.each do |key, value|
    print "#{key}: #{value}, "
end

puts instructor[:name]
puts instructor.key(27)


#3 Nested Structures//////////

school = {
  :name => "Happy Funtime School",
  :location => "NYC",
  :instructors => [
    {:name=>"Blake", :subject=>"being awesome" },
    {:name=>"Ashley", :subject=>"being better than blake"},
    {:name=>"Jeff", :subject=>"karaoke"}
  ],
  :students => [
    {:name => "Marissa", :grade => "B"},
    {:name=>"Billy", :grade => "F"},
    {:name => "Frank", :grade => "A"},
    {:name => "Sophie", :grade => "C"}
  ]
}

 school[:founded_in] = 2013
 puts school

 #Adds new student array
 new_student = {:name => "Tom", :grade => "A"}
 school[:students].push(new_student)
 puts school

 #removes Billy
 school[:students].delete_at(1)
 puts school

 #adding new key:value to students
 school[:students].each do |s|
     s[:semester] = "summer"
     puts school
 end

#Changing Ashley's subject

ashley = school[:instructors][1]
ashley[:subject] ="being almost better than Blake"
puts ashley
#Changes Frank's grade
Frank = school[:students][1]
Frank[:grade] ="F"
puts Frank

student_array = school[:students]


#Who has a grade of B?
student_array = school[:students]
student_array.each  do |n|
    if n[:grade] == "B"
        puts n[:name]
    end
end

#Return instructor Jeff''s subject

instructor_array = school[:instructors]

instructor_array.each do |i|
    if i[:name] == "Jeff"
        puts i[:subject]
    end
end

#all school values printed
print school #work it so all values are printed not in array.


#4 Methods////////////////

#Create a method to return the grade of a student,  given student[:name]


# class School

            def retrieve_grade(student_name)
                student_array = school[:students] #a hash

                @name = student_name

                        student_array.each  do |n|
                                    if n[:name] == @name
                                            puts n[:grade]
                                    end
                        end
            end

tom = retrieve_grade("Tom")
puts
# end

# student_info = School.new
# grade = student_info.retrieve_grade("Tom")


