trains =[
{train: "72C", frequency_in_minutes: 15, direction: "north"},
{train: "72D", frequency_in_minutes: 15, direction: "south"},
{train: "610", frequency_in_minutes: 5, direction: "north"},
{train: "611", frequency_in_minutes: 5, direction: "south"},
{train: "80A", frequency_in_minutes: 30, direction: "east"},
{train: "80B", frequency_in_minutes: 30, direction: "west"},
{train: "110", frequency_in_minutes: 15, direction: "north"},
{train: "111", frequency_in_minutes: 15, direction: "south"}
]

#1.Save the direction of train 111 into a variable
direction_111 = trains[-1][:direction]
p direction_111

#2.Save the frequency of train 80B into a variable.
frequency_80B = trains[-3][:frequency_in_minutes]
p frequency_80B

#3.Save the direction of train 610 into a variable.
direction_610 = trains[3][:direction]
p direction_610

#4.Create an empty array. Iterate through each train and add the name of the
#train into the array if it travels north.
empty_array = []
trains.each do |train|
  train.each do |key,value|
  if train[:direction] == "north"
    empty_array << train[:train]
  end
 end
end

p empty_array

#5.Do the same thing for trains that travel east.
empty_array_2 = []
trains.each do |train|
  train.each do |key,value|
  if train[:direction] == "east"
    empty_array_2 << train[:train]
  end
 end
end

p empty_array_2

#6.You probably just ended up rewriting some of the same code.
 # Move this repeated code into a method that accepts a
 # direction and a list of trains as arguments, and returns
 # a list of just the trains that go in that direction.
 # Call this method once for north and once for east in order
 # to DRY up your code.
def train_search(direction, trains)
  trains_in_this_direction = []
  trains.each do |train|
    train.each do |key, value|
      if train[:direction] == direction
        trains_in_this_direction << train[:train]
        return "Trains in this direction: #{trains_in_this_direction}"
      end
    end
  end
end

p train_search("east", trains)
p train_search("north", trains)

#7.Pick one train and add another key/value pair for the
 # first_departure_time. For simplicity, assume the first
 # train always leave on the hour. You can represent this hour
  # as an integer: 6 for 6:00am, 12 for noon, 13 for 1:00pm,
  # etc
trains[1][:first_departure_time] = "6am"
p trains[1]
