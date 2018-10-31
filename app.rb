require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    # that accepts a name and renders the name backwards.
    @name = params[:name]
    @name.reverse
  end
  get '/square/:number' do
    # **Note:** Remember that values in params always come in as strings,
    # and your return value for the route should also be a string
    # (use `.to_i` and `.to_s`).
    @number = params[:number].to_i
    erb :square
  end
  get '/say/:number/:phrase' do
    # that accepts a number and a phrase and returns
    # that phrase in a string the number of times given.
    @number = params[:number].to_i
    @phrase = params[:phrase].to_s
    erb :say

  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    # that accepts five words and returns a string containing all five words
    # (i.e. `word1 word2 word3 word4 word5`)
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end
  get '/:operation/:number1/:number2' do
    # accepts an operation (add, subtract, multiply or divide)
    # and performs the operation on the two numbers provided.
    # For example, going to `/add/1/2` should render `3`.
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    # binding.pry

    if operation == "add"
      (number1 + number2).to_s
    elsif operation == "subtract"
      (number1 - number2).to_s
    elsif operation == "divide"
      (number1 / number2).to_s
    elsif operation == "multiply"
      (number1 * number2).to_s
    end
  end

end
