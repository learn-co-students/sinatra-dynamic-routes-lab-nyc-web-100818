require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
    @name = params[:name].reverse
    erb :reversename
  end

  get '/square/:number' do 
    @number = params[:number].to_i
    erb :square
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    erb :say
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    join = [@word1, @word2, @word3, @word4, @word5].join(" ")
    "#{join}."
  end

  get '/:operation/:number1/:number2' do
  @operation = params[:operation]
  @number1 = params[:number1].to_i
  @number2 = params[:number2].to_i
    case @operation
    when "add" then "#{@number1 + @number2}"
    when "subtract" then "#{@number1 - @number2}"
    when "multiply" then "#{@number1 * @number2}" 
    when "divide" then "#{@number1 / @number2}"
    end
  end
end#end of class
