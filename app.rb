require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name]
    @user_name_reversed = @user_name.reverse
    "#{@user_name_reversed}"
  end

  get '/square/:number' do
    @num = params[:number]
    @squared = params[:number].to_i * params[:number].to_i
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @saying = params[:phrase]
    "#{@saying * @num}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    if @op == 'add'
      "#{@num1 + @num2}"
    elsif @op == 'subtract'
      "#{@num1 - @num2}"
    elsif @op == 'multiply'
      "#{@num1 * @num2}"
    else
      "#{@num1 / @num2}"
    end
  end

end
