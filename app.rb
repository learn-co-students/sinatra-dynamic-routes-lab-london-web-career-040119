require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    reversename =@name.reverse
    "#{reversename}"
  end

  get '/square/:number' do
    number = params[:number]
    (number.to_i ** 2).to_s
  end

  get'/say/:number/:phrase' do
     num = params[:number]
     phrase = params[:phrase]
     answer = []
     num.to_i.times do
       answer << phrase
     end
     answer.join('')
   end

   get '/say/:word1/:word2/:word3/:word4/:word5' do
     "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
   end

   get '/:operation/:number1/:number2' do
     op = params[:operation]
     num1 = params[:number1].to_i
     num2 = params[:number2].to_i
     answer=nil
     if op=="add"
       answer =(num1+num2).to_s
     elsif op == "subtract"
       answer = (num1-num2).to_s
     elsif op=="multiply"
       answer = (num1 * num2).to_s
     elsif op=="divide"
       answer = (num1/num2).to_s
     end
   end


 end
