require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
get '/reversename/:name' do
  @name = params[:name].reverse
  "#{@name}"
end

get '/square/:number' do
  @sq_num = params[:number].to_i * params[:number].to_i
  "#{@sq_num}"
end

get '/say/:number/:phrase' do
  @output = params[:phrase] * params[:number].to_i
  "#{@output}"
end

get '/say/:word1/:word2/:word3/:word4/:word5' do
  "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  # @output = arr.join(" ")
  #{@arr}"
end

get '/:operation/:number1/:number2' do
  @num1 = params[:number1].to_i
  @num2 = params[:number2].to_i
if  params[:operation] == "add"
  @result = @num1 + @num2
  "#{@result}"
elsif params[:operation] == "substract"
  @result = @num1 - @num2
  "#{@result}"
elsif params[:operation] == "multiply"
  @result = @num1 * @num2
  "#{@result}"
else 
  @result = @num1 / @num2
  "#{@result}"
end
end

end
