require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number]
    "#{@num.to_i**2}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number]
    @phrase = params[:phrase]
    erb :say

  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do

    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num_one = params[:number1].to_i
    @num_two = params[:number2].to_i

    case @operation
    when "add" then "#{@num_one + @num_two}"
    when "subtract" then "#{@num_one - @num_two}"
    when "multiply" then "#{@num_one * @num_two}"
    when "divide" then "#{@num_one / @num_two}"
    end
  end


end