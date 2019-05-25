require 'pry'

def my_collect(arr) # put argument(s) here
  # code here
  i = 0
  out = [];
  while i < arr.length
  	yield arr[i]
  	if arr[i].split(" ").length > 1
  		out << arr[i].split(" ").first
  	else
  		yield arr[i]
  		out << arr[i].upcase
  	end
  	i += 1
  end
  out
end

