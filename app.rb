require_relative 'config/environment'

class App < Sinatra::Base


  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end


  get '/square/:number' do
    @number = params[:number].to_i
    @squared = @number * @number
    @squared.to_s
  end


  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase * @number
  end


  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end


  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]
    if @operation == "add"
      @add = @number1 + @number2
      @add.to_s
    elsif @operation == "subtract"
      @subtract = @number1 - @number2
      @subtract.to_s
    elsif @operation == "multiply"
      @multiply = @number1 * @number2
      @multiply.to_s
    elsif @operation == "divide"
      @divide = @number1 / @number2
      @divide.to_s
    end
  end


end
