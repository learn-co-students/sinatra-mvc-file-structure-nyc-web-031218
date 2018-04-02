class ApplicationController < Sinatra::Base

	attr_reader :breed
	attr_accessor :name, :age

  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

  get "/" do
  	erb :index
  end
end
