require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name].reverse
  end


  get '/square/:number' do
    number = params[:number]
    total = (number.to_i ** 2)
    total.to_s
  end


  get "/say/:number/:phrase" do
    final_sentence = ""
    n = params[:number].to_i
    sentence = params[:phrase]
    n.times do
      final_sentence += sentence
    end
    final_sentence
  end


  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end


  get "/:operation/:number1/:number2" do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if operation == "add"
      total = (num1 + num2).to_s
    elsif operation == "subtract"
      total = (num1 - num2).to_s
    elsif operation == "multiply"
      total = (num1 * num2).to_s
    elsif operation == "divide"
      total = (num1 / num2).to_s
    end
  end

end
