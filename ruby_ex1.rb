puts "unicorn".reverse()
 => nrocinu


puts :unicorn.reverse()
 => bug



[:a, :b, :c].include?(:a) 
=>true



["Too", "Weird", "To", "Live,", "Too", "Rare", "To", "Die"].join(" ") 
=> "Too Weird To Live, Too Rare To Die"



[2, 4, 6, 8].map { |number| number ** 2 } 
=> [4, 16, 36, 64]



[2, 4, 6, 8].map do |number|
  number ** 2
end
=>[4, 16, 36, 64]


warty_newt = { "type" => "Amphibian", "diet" => "Carnivore", "life_span" => "25 years" }
warty_newt["type"] => "Amphibian"


warty_newt = { type:  "Amphibian", diet: "Carnivore" }
warty_newt[:type] =>"Amphibian"




colors = ['red', 'violet', 'blue'] 
c=[]
c.push([colors[0],1], [colors[1],2], [colors[2],3])
puts c.to_s 
 => [['red', 1], ['violet', 2], ['blue', 3]]



a = [['will smith', 'i am legend'], ['brad pitt', 'fight club'], ['frodo', 'the hobbit']]
h = {}
a.each do |e|
h[e[0]] = e[1] 
end 
puts h   
=>{"will smith" => "i am legend", "brad pitt" => "fight club", "frodo" => "the hobbit"}



a = ["cool", "busta", "odb"]
b = ["puffy", "cool", "busta"]
c = []
h{ |i| c << i unless b.include? i }
puts c.to_s    
=>["odb"]


people = [
  {:name => "bob", :age => 42},
  {:name => "frank", :age => 13}
]
a = []
people.each do |i|
  a << i[:name]
end
puts a.to_s  
=>  ["bob", "frank"]





movie = {
  "dude" => [],
  "where's" => "",
  "my" => {},
  "car" => Object.new
}
puts movie.keys.join(" ")
=>>dude where's my car



h = {a: 123, b: 456}
a = []
h.each do |key, value|
  a << [key, value]
end
puts a.to_s
=>>[[:a, 123], [:b, 456]]



h1 = {surfing: "fun"}
h2 = {rock_climbing: "scary"}
puts h1.merge h2
=>>{:surfing=>"fun", :rock_climbing=>"scary"}



class Dog
  def initialize
    @bark = "ruff ruff"
  end

  def speak
    "I like to #{@bark}"
  end
end

fido = Dog.new
puts fido.speak()
=>>I like to ruff ruff



class Computer
  def initialize
    @sound = "beep beep"
  end

  def self.about
    "Sometimes I go #{@sound}"
  end
end
p Computer.about
=> "Sometimes I go "



class Chair
  AGE = "been around the block"
  def self.about
    "I'm old and I've #{AGE}"
  end
end
p Chair.about
"I'm old and I've been around the block"



class Person
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end
end

class Doctor < Person
  def full_name
    "Dr. #{super}"
  end
end
dr_phil = Doctor.new("Phil", "McGraw")
p dr_phil.full_name
=> "Dr. Phil McGraw"



module Purr; end
class Cat
  include Purr
end
=> Cat











