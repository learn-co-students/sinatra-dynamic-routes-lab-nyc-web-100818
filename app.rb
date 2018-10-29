require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @user_name = params[:name].reverse
    "#{@user_name}"
  end

  get '/square/:number' do
    @sqr = params[:number].to_i
    "#{@sqr * @sqr}"
  end

  get '/say/:number/:phrase' do
    @count = params[:number].to_i
    @str = params[:phrase]
    "#{@str * @count}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @phrase1 = params[:word1]
    @phrase2 = params[:word2]
    @phrase3 = params[:word3]
    @phrase4 = params[:word4]
    @phrase5 = params[:word5]
    "#{@phrase1} #{@phrase2} #{@phrase3} #{@phrase4} #{@phrase5}."
  end

  get '/:operation/:number1/:number2' do
    @operate = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case @operate
    when 'add'
      "#{@num1 + @num2}"
    when 'subtract'
      "#{@num2 - @num1}"
    when 'multiply'
      "#{@num1 * @num2}"
    when 'divide'
      "#{@num1 / @num2}"
    end

  end



end
