require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    n = params[:number].to_i
    (n * n).to_s
  end

  get '/say/:number/:phrase' do
    n = params[:number].to_i
    all = ""
    n.times do
      all += params[:phrase]
    end
    all
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    txt = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i
    if params[:operation] == 'add'
      "#{n1 + n2}"
    elsif params[:operation] == "subtract"
      "#{n1 - n2}"
    elsif params[:operation] == "multiply"
      "#{n1 * n2}"
    elsif params[:operation] == "divide"
      "#{n1.to_f / n2.to_f}"
    end
  end

end
