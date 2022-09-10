# frozen_string_literal: true

# Part 1

def sum(arr)
  sum=0
  arr_len=arr.length()
  until arr_len==0
      sum=sum+arr[arr_len-1].to_i
      arr_len=arr_len-1
  end
  return sum
end

def max_2_sum(arr)
  sum=0
  arr=arr.sort
  indx=0
  if(arr.length==1)
    sum=arr[0]
  elsif
    while (indx<2)
      #print(arr[arr.length-1-indx])
      #print("\n")
      sum=sum+arr[arr.length-1-indx].to_i
      indx=indx+1
    end
  end
  return sum
end

def sum_to_n?(arr, number)
  output=false
  temp_sum=0
  for i in 0...arr.length
    rem_int=arr.length-i-1
    for j in 0...rem_int
      part_sum=arr[i].to_i+arr[i+j+1].to_i
      if(part_sum==number)
        output=true
      end
    end
  end
  return output
end

def hello(name)
  return "Hello, "+name
end

def starts_with_consonant?(string)
  if (string.empty?) or !(string[0] =~ /[a-zA-Z]/)
    return false
  else
    return ! (['A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u'].include? string[0])
  end
end

def binary_multiple_of_4?(string)
  output=false
  unless string.empty?
    output=((string.to_i)%4 == 0) && (string !~ /[^01]/)
  end
  return output
end

# Part 3

# Object representing a book
class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
   raise ArgumentError.new(
    "Argument Error"
   ) if ( (isbn.empty?) || (price <= 0) )
 end
 
 def isbn
   @isbn
 end
 
 def isbn=(isbn)
   @isbn = isbn
 end

 def price
   @price
 end
 
 def price=(price)
   @price = price
 end

  def price_as_string()
    print(@price.class)
    return ("$"+"%0.2f" % [@price.to_s])
  end
end