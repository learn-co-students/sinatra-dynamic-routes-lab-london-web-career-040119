require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    params[:name].reverse.to_s
  end

  get '/square/:num' do
    (params[:num].to_i**2).to_s
  end

  get '/say/:number/:phrase' do
    result = []
    params[:number].to_i.times do
      result << params[:phrase]
    end
    result.join(' ')
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params.select { |key, _value| key.start_with?('word') }.values.join(' ') + '.'
  end

  get '/:operation/:num1/:num2' do
    ops = {
      add: :+,
      subtract: :-,
      multiply: :*,
      divide: :/
    }
    op = ops.values_at(params[:operation].to_sym).first
    [params[:num1].to_i, params[:num2].to_i].inject(op).to_s
  end
end
