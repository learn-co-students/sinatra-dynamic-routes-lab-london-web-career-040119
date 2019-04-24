require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
  @username = params[:name]
  @username.reverse
  end

  get "/square/:number" do
  @num = params[:number].to_i
  "#{@num * @num}"
  end

  get "/say/:number/:phrase" do
  @phrase = params[:phrase]
  string = ""
  params[:number].to_i.times do
    string += @phrase
  end
  string
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do

  @word1 = params[:word1]
  @word2 = params[:word2]
  @word3 = params[:word3]
  @word4 = params[:word4]
  @word5 = params[:word5]

  "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:num1/:num2" do
    @operation = params[:operation]
    @num1 = params[:num1].to_f
    @num2 = params[:num2].to_f

    if @operation == "add"
      @result = @num1 + @num2
    elsif @operation == "subtract"
      @result = @num1 - @num2
    elsif @operation == "multiply"
      @result = @num1 * @num2
    elsif @operation == "divide"
      @result = @num1 / @num2
    end
    @result.to_s
  end
end
