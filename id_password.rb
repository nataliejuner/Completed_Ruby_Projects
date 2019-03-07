puts "Enter a user ID"
puts "Must contain AT LEAST 6 characters long and CANNOT contain: !#$ or spaces"
id= gets.chomp
puts "Enter a password"
puts "Must contain AT LEAST 6 lower case characters long and MUST contain: !#$ "
pass = gets.chomp

def same(name1, password1)
    if(name1 == password1)
        true
    else
        false
    end
end
same(id,pass)

 def long_enough(name2, password2)
     if(name2.length >= 6 && password2.length >= 6)
         true
    else
        false
    end
end

long_enough(id, pass)

def does_not_contain_special (name3)
    if name3.include?("!") ||
        name3.include?("#") ||
        name3.include?("$") ||
        name3.include?("?") ||
        name3.include?(" ")
        false
    else
        true
    end
end

does_not_contain_special(id)

def contain_special (password3)
    if password3.include?("!") ||
        password3.include?("#") ||
        password3.include?("$") ||
        password3.include?("?")
        true
    else
        false
    end
end
contain_special(pass)

def contain_digit (password4)
    if password4.include?("0") ||
        password4.include?("1") ||
        password4.include?("2") ||
        password4.include?("3") ||
        password4.include?("4") ||
        password4.include?("5") ||
        password4.include?("6") ||
        password4.include?("7") ||
        password4.include?("8") ||
        password4.include?("9")
        true
    else
        false
    end
end

contain_digit(pass)

def validate (id, pass)
    if(pass == "password")
        p "Password cannot be the word password"
    elsif (same(id, pass) == true)
        p "ID and password cannot be the same"
    elsif (long_enough(id, pass) == true && does_not_contain_special(id) == true && contain_special(pass) == true && contain_digit(pass) == true)
        p "ID and password are acceptable"
    else
        p "****Id and password are not acceptable"
    end
end
validate(id, pass)
