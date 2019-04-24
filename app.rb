require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @squared = params[:number].to_i*params[:number].to_i
    @squared.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase_string = @phrase * @number
  end


  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word_string = params[:word1]+" "+params[:word2]+" "+params[:word3]+" "+params[:word4]+" "+params[:word5]+"."
  end

   get '/:operation/:number1/:number2' do
   @oper = params[:operation].to_s
   @num1 = params[:number1].to_i
   @num2 = params[:number2].to_i
   @operated = 0
     if @oper == 'add'
       @operated = @num1+@num2
     elsif @oper == 'subtract'
       @operated = @num1-@num2
     elsif @oper == 'multiply'
       @operated = @num1*@num2
    elsif @oper == 'divide'
       @operated = @num1/@num2
    end

    @operated.to_s
    #@operated

  end

end
