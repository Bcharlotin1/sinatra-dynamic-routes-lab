require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    user_name = params[:name]
    @reverse_name = user_name.reverse 
    "Hello #{@reverse_name}!"
  end

  get "/square/:number" do
    num = params[:number]
    @square_num = num.to_i * num.to_i
    "Hello #{@square_num}!"
  end

  get "/say/:number/:phrase" do
    number = params[:number]
    @phrase = params[:phrase]
    n = number.to_i
    n.times do 
      "#{@phrase}"
    end
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
   "#{word1} + #{word2} + #{word3} + #{word4} + #{word5} + ."
  end
  get "/:operation/:number1/:number2" do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    @solution = nil
    if operation = "add"
      @solution = num1 + num2
    elsif operation = "subtract"
      @solution = num2 - num1
    elsif operation = "multiply"
      @solution = num1 * num2
    elsif operation = "divide"
      @solution = num1 / num2
    end
    "#{@solution}"
  end


end