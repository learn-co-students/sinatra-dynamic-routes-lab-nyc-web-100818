require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/reversename/:name' do
    rev_name = params[:name].reverse
    "#{rev_name}"
  end

  get '/square/:number' do
    squared = params[:number].to_i * params[:number].to_i
    squared.to_s
  end

  get '/say/:number/:phrase' do #come back to this
    number = (params[:number].to_i)
    string = ""

    number.times do
      string += params[:phrase]
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      solution = params[:number1].to_i + params[:number2].to_i
    elsif params[:operation] == "subtract"
      solution = params[:number1].to_i - params[:number2].to_i
    elsif params[:operation] == "multiply"
      solution = params[:number1].to_i * params[:number2].to_i
    elsif params[:operation] == "divide"
      solution = params[:number1].to_i / params[:number2].to_i
    end
    solution.to_s
  end

end
