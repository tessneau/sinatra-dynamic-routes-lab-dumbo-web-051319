require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @square = params[:number].to_i ** 2
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number]
    @phrase = params[:phrase]
    @phrase * @num.to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @joined = params.values.join(' ') + "."
  end

  get '/:operation/:number1/:number2' do
    # binding.pry
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operation = params[:operation]
    # binding.pry
    case @operation
    when "add"
      "#{@num1 + @num2}"
    when "subtract"
      "#{@num1 - @num2}"
    when "multiply"
      "#{@num1 * @num2}"
    when "divide"
      "#{@num1 / @num2}"
    end

  end


end
