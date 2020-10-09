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

  def buy_cat(cat)
    cat. self
  end
   




end