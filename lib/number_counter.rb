# require('pry')
# binding.pry
class Counter



  def initialize(number)
     @number = number
   end

  def number_counter
    numbers = Hash.new()
    numbers = { "1" => "one" , "2" => "two",  "3" => "three", "4" => "four", "5" => "five", "6" => "six", "7" => "seven", "8" => "eight", "9" => "nine", "10" => "ten", "11" => "eleven", "12" => "twelve", "13" => "thirteen", "14" => "forteen", "15" => "fifteen", "16" => "sixteen", "17" => "seventeen", "18" => "eighteen", "19" => "nineteen", "20" => "twenty", "0" => ""}

    numbers_of_ten = Hash.new()
    numbers_of_ten = {"2" => "twenty" ,"3" => "thirty", "4" => "forty", "5" => "fifty", "6" => "sixty", "7" => "seventy", "8" => "eighty", "9" => "ninety", "0" => ""}

    number_array = []
    chars = @number.split('')
    chars.each { |x|
      number_array.push(x)
    }
    result = ""
    if number_array.length == 3
      result = numbers.fetch(number_array[0])+"hundred"
      puts result
      number_array.shift
    end
    #  | ((number_array[0] == "0") & (number_array.length == 2))
    if number_array.length == 1
      result = result+numbers.fetch(@number)
    elsif (number_array.length == 2) & ((number_array[0] == "1") | (number_array[0] == "2"))
        result = result+numbers.fetch(@number)
    elsif (number_array.length == 2) & ((number_array[0] != "1") | (number_array[0] != "2"))
      first_number = numbers_of_ten.fetch(number_array[0])
      second_number = numbers.fetch(number_array[1])
      result = result+first_number+second_number
    end
    result
  end
end








#
