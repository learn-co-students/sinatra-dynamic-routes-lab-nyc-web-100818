require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    reversed = params['name'].reverse
    reversed
  end

  get '/square/:number' do
    squared = params['number'].to_i ** 2
    squared.to_s
  end

  get '/say/:number/:phrase' do
    phrase = params['phrase']
    response = ""
    params['number'].to_i.times do
      response += phrase
    end
    response
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params.values.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    operation = case params['operation']
    when 'add' then :+
    when 'subtract' then :-
    when 'multiply' then :*
    when 'divide' then :/
    end
    num1 = params['number1'].to_i
    num2 = params['number2'].to_i
    response = num1.send(operation, num2)
    response.to_s
  end

end