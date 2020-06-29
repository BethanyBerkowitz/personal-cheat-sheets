########################
# Ruby syntax reference
########################

### BASICS ###
puts "print me!"
# &&: and
# ||: or
# !: not
# ! usually means change in place
gets.chomp # User input

### VARIABLES AND CONSTANTS ###
my_variable = "foo"
my_variable ||= "bar" # sets variable only if not already set
@my_instance_variable = "instance"
@@my_class_variable = "class"
MY_CONSTANT = "constant"

# STRINGS
str = "best_string_ever"
str.split(_) # ["best", "string", "ever"]
interpolated = "interpolate: #{str}"
'foo'.reverse # “oof”
'foo'.upcase # “FOO”
'foO'.downcase # “foo”
'foo'.capitalize # “Foo”
'foo'.include? "i" # false
'foo'.gsub!(/o/, "e") # fee
"1".to_i # transform string to integer –– 1
"foo".to_sym # :foo
:foo.to_s # "foo"

### ARRAYS ###
a = ["a", 4.2, ["c", "d"], my_variable]
a[1] # 4.2
a[2..-1] #[["c", "d"], my_variable]

a = [7, 3, 5 8, 9, 1]
a.concat([11, 12, 13])
a.length
a.first # or my_array.first(2)
a.last # or my_array.last(2)
a.pop # removes last item and returns it
a.shift # removes first item and returns it
a.push("new item at the end")
a.unshift("new item at the beginning")

a.include?(7)
a.delete(9)
a.delete_at(2)
a.reverse
a.sort!
a.join("-")

a.select { |element| element > 3 }

a.each do |element|
    puts element
end

doubled = a.map { |element| element * 2 }

deduped = a.uniq

# HASHES
string_hash = { "key1" => "value1", "key2" => "value2" }
symbol_hash = { key1: 1, key2: 2, key3: 100 } 

string_hash["key1"]
symbol_hash[:key1]

hash.select { |key, value| value > 3 } # returns new hash meeting criteria
hash.each_key { |k| puts k }
hash.each_value { |v| puts v }


# METHODS
def say_hello(name="Default")
    return `Hello, #{name}!`
end

# CONDITIONS
if a < 2
    puts “smaller than two”
elsif a > 2 
    puts “greater than two”
else
    puts “equal to two!”
end

puts "not two" unless a == 2

puts a == 2 ? "two" : "not two"

# Case
case my_var
    when "some value"
    ###
    when "some other value"
    ###
    else
    ###
end

# LOOPS
i = 1
while i < 11 # prints 1 through 10
  puts i
  i = i + 1
end

for i in 1...11 # prints even numbers between 1 and 10
    next if i % 2 != 0
    puts i
end 

10.times do
    puts “print this 10 times”
end

["a", "b", "c"].each do |element|
    puts element
end

{ key1: 1, key2: 2 }.each do | key, value |
    puts "#{key}: #{value}"
end

# CLASSES
class RegularPolygon
    attr_reader :number_of_sides
    attr_writer :number_of_sides

    def initialize(number_of_sides)
        @number_of_sides = number_of_sides
    end

    def do_stuff
        return "I'm a polygon!"
    end 

    private
    def do_private_stuff
        return "ssshhhh it's a secret"
    end
end

square = RegularPolygon.new(4)
puts square.number_of_sides

# Inheritance
class DerivedClass < BaseClass
    # stuff
end

