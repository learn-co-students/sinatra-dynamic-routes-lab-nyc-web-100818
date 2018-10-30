require_relative 'config/environment'
# CONTROLLER!
class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @num = params[:number]
    @square = @num.to_i ** 2 # to the second power
    "#{@square.to_s}"
  end

  get "/say/:number/:phrase" do # 2 key value pairs in the hash now
    @number = params[:number]
    @phrase = params[:phrase]
    t = @number.to_i
    big_string = ''
    t.times do
      big_string += "#{@phrase}"
    end
    big_string
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    combo_string = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @operation == "add"
      "#{@num1 + @num2}"
    elsif @operation == "subtract"
      "#{@num1 - @num2}"
    elsif @operation == "multiply"
      "#{@num1 * @num2}"
    else
      "#{@num1 / @num2}"
    end
  end



end # end of App class
