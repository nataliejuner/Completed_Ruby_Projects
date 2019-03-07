puts "How old are you?"
age = gets.to_i
puts "Am I old enough to: CHOOSE ONE!!! Drive, Drink, or Drugs?"
choice = gets.chomp

def decider(number, old_answer)
    answer = old_answer.downcase
    if (answer == "drugs")
        p "Don't do drugs, kids."
    elsif (number >= 18 && answer == "drive")
        p "You can drive on your own! Wow!"
    elsif (number == 16 && answer == "drive")
        p "You can get your permit...watch out world!!"
    elsif (number < 16 && answer == "drive")
        p "You're too young, my friend"
    elsif (number >= 21 && answer == "drink")
        p "You can drink, but don't act like it's 5 o' clock somewhere."
     elsif (number > 1 && number < 22 && answer == "drink")
         p "You're too young to drink. Go play outside."
    else
        p "Inputs are invalid"
    end
end

decider(age, choice)
