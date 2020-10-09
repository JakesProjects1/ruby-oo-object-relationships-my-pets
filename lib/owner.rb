require 'pry'
class Owner
  # code goes here
  
@@all = []
#@@count = []

  attr_reader :name, :species

    def initialize(name)
      @name = name
      @species = "human"
      @@all << self
     
   end
   #binding.pry

   def say_species
    return "I am a #{@species}."
   end

   def self.all 
    @@all
   end

   def self.count 
    self.all.count
   end

   def self.reset_all
    self.all.clear 
   end

   def cats
    Cat.all.select do |cat|
     cat.owner == self
    end
   
   end

   def dogs
    Dog.all.select do |dog|
      dog.owner == self
    end
 
   end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    self.dogs.map do |dog|
      dog.mood = "happy"
      # binding.pry
    end
  end

  def feed_cats 
    self.cats.map do |cat|
      cat.mood = "happy"
    end
  end

  
  def sell_pets
    self.dogs.map do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
    self.cats.map do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
  end

  def list_pets
     "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
    
  end




   




end