puts "Enter a Month like MM"
month = gets.to_i
puts "Enter a Day like DD"
day = gets.to_i
puts "Enter a Year like YYYY"
year = gets.to_i

def validate_date (m1, d1, y1)
    if (y1 < 0)
        p "This is NOT a valid year"
    elsif(m1 == 2 && d1 == 29 && y1 % 4 == 0)
        puts "This is a valid date"
    elsif (m1 == 2 && d1 > 0 && d1 < 29 && y1 % 4 != 0)
        puts "This is a valid date"
      elsif (m1 == 8 && d1 > 0 && d1 <=31)
        puts "This is a valid date"
    elsif (m1 == 2 && d1 > 29)
        puts "This is NOT a valid date"
    elsif (m1 % 2 == 0 && d1 > 0 &&  d1 < 30)
        puts "This is a valid date"
    elsif (m1 % 2 != 0 && d1 > 0 && d1 < 31)
        puts "This is a valid date"
    else p "This is NOT a valid date"
end
end

validate_date(month, day, year)
