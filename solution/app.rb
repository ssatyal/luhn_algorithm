require 'pry'

def luhn(cardNum)
  convert = cardNum.to_s
  array = convert.split("")

  intArray = array.map do |num|
    num.to_i
  end

  intArray.reverse!

  newNums=[]

  intArray.each_with_index do |num, index|
    if index%2!=0
      newNums << num*2
    else newNums << num
    end
  end

  another = newNums.join("")
  something = another.split("")

  here = something.map do |num|
    num.to_i
  end

  sum = 0
  here.each { |a| sum+=a }

  if sum%10==0
    puts 'VALID'
    return true
  else
    puts 'INVALID'
    return false
  end
end

binding.pry
