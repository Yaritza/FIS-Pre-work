#require_relative 'starting_array'

#4 Methods////////////////

#Create a method to return the grade of a student,  given student[:name]

# class School
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

def retrieve_grade(school, student_name)
     school[:students].each  do |student|
      if student[:name] == student_name
        return student[:grade]
      end
    end
end

 puts retrieve_grade(school, "Frank")
#//////////////////////////////////////////misunderstood Q?/////////////
# def  subject?(school, instructor_name)
#   school[:instructors].each do |instructor|
#     if instructor[:name] == instructor_name
#       return instructor[:subject]
#     end
#   end
# end
 # puts subject?(school, "Blake")

 #///////////////////////////////////////////////////////////////////??

 # puts "For what teacher do you want to update a subject for?"
 # instructor_name = gets.chomp
 # puts "What is the new subject?"
 # new_subject = gets.chomp

def update_subject(school, instructor_name, new_subject)
  school[:instructors].collect do |instructor|
      if instructor[:name] == instructor_name
         instructor[:subject] = new_subject
      end
  end
end


puts update_subject(school, "Blake", "being terrible")

def add_student(school, student_name)
    new_student = {:name => student_name, :grade => "nil"}
    school[:students].push(new_student)
    return  school[:students]
end

puts add_student(school, "Yaritza")

def add_key(school, key, value)
  new_key = key.to_sym
  school[new_key] = value
end

puts add_key(school, "ranking", 1)
p school

def method_name

end



