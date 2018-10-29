require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
  @reversed = params[:name].reverse
  "#{@reversed}"
  end

  get '/square/:number' do
    @square = params[:number].to_f**2
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @string_builder = []
    params[:number].to_i.times do
      @string_builder << params[:phrase]
    end
      "#{@string_builder}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

   get '/:operation/:number1/:number2' do
     @op = params[:operation]
     @num1 = params[:number1].to_i
     @num2 = params[:number2].to_i
     case @op
     when "add"
       "#{@num1+@num2}"
     when "subtract"
       "#{@num1-@num2 }"
     when "multiply"
       "#{@num1*@num2}"
     when "divide"
       "#{@num1/@num2}"
     else
       "Wow amigo what is that?"
     end 

   end



end

#    multiplies two numbers together (FAILED - 15)
#    divides the first number by the second number (FAILED - 16)
