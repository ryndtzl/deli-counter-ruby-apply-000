def line(katz_deli)
  if katz_deli.size() == 0 #this checks if line is empty
    puts  "The line is currently empty."
  else 
    array_of_names = katz_deli.collect.with_index { |name, i| "#{i+1}. #{name}" } #transforms katz_deli to include their place in line
    string_of_names = array_of_names.join(" ") #converting the array into a string
    puts "The line is currently: #{string_of_names}"
  end
end

$ticketnum = 0
def take_a_number(katz_deli)
  $ticketnum += 1
katz_deli.push($ticketnum)
 puts "Welcome. You are ticket number #{$ticketnum} in line."
end

# def take_a_number(katz_deli, new_name) 
#   katz_deli.push(new_name)
#   puts "Welcome, #{new_name}. You are number #{katz_deli.size()} in line."
# end

def now_serving(katz_deli)
  if katz_deli.size() == 0 #checks if line is empty
    puts "There is nobody waiting to be served!"
  else
    first = katz_deli.shift #removing first person from katz_deli and saving them as first
    puts "Currently serving #{first}."
  end
end
