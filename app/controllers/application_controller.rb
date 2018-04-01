class ApplicationController < Sinatra::Base

  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

  get "/" do
  	erb :index
  end
end

class Dog

  ALL = []
  attr_reader   :breed
  attr_accessor :name, :age
  def initialize(name, breed, age)
    @name = name
    @breed = breed
    @age = age
    ALL << self
  end

  def self.all
    ALL
  end

end

# Dog.new(" rudolph", "mastiff", 2)
