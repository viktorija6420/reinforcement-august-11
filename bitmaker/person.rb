class Person
  #class must be with capital letter
  #to make them know their names we make a method to initialize a Person
  #initialize makes the person
  def initialize(first_name, last_name)
    #Instance variable belongs to an instance. natalie is an instance
    #with two variables.Mina is an instance with two variables..
    #Instance=@first_name and @last_name
    @first_name = first_name
    @last_name = last_name
#you do not have to provide info when you create a person.You just make it default.
#In this case you make it true if it is awake.
    @awake = true
    @health = 100
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

  def greetings
    #because it is defined in the class, you can access the info. its like
    #their names are in their brain and you are accessing them
    if @awake
      "Hi, my name is #{@full_name}."
    else
      "zzzzz"
  end
end
end

def sleep
  @awake = false
end

def wake
  @awake = true
end

def mutate
  @tail = true
end
#READER
def first_name
  @first_name
end

def last_name
  @last_name
end
#WRITER
#to change the name
def first_name=(first_name)
  @first_name = first_name
end
#we create that person and we give it the name
fred = Person.new('Fred', 'Ngo')
mina = Person.new('Mina',  'Mikhail')
natalie = Person.new('Natalie', 'Black')
#there are 9 variables, 3 persons and 2 variables per person(instance)

#this is how you run an instance method
# puts  fred.full_name
# puts fred.greetings
# puts mina.full_name
# puts mina.greetings
# puts natalie.full_name
# puts natalie.greetings
# you put puts outside of the method because it is considered bad manners to put
# it inside. And you can change it later if needed.
puts fred.greetings
fred.sleep

puts fred.greetings
puts mina.greetings
puts natialie.greetings
fred.mutate
puts "Does fred have a tail? #{fred.tail}"
puts "Does mina have a tail? #{mina.tail}"
puts "Does natalie have a tail? #{natalie.tail}"

puts "Fred's first name is: #{fred.first_name}"
#to change mina's name you call mina and apply the method first_name that we
#created the second time
puts "Mina's name is: #{mina.first_name}"
mina.first_namez=('Joe')
puts "Mina's name is: #{mina.full_name}"
