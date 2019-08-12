require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get '/goodbye/:name' do 
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end
  
<<<<<<< HEAD
  get '/multiply/:num1/:num2' do 
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    "#{@num1 * @num2}"
  end

=======
   get '/multiply/:num1/:num2' do 
    @factors = params[:num1, :num2]
    @product = :num1._to_i * :num2.to_i
    "#{@product}"
  end
  
>>>>>>> fea4c2e0dfcfffcbce28f43151caf5baf5de07b1
end