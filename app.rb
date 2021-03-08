require_relative 'config/environment'
require 'pry'
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
    @string = []
    n.times do 
      @string << @phrase
    end
    "#{@string.join(",")}"

  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
   word = "#{word1}" + " #{word2}" + " #{word3}" + " #{word4}" + " #{word5}" + "."

  #  @string = ""
  #  @string.concat("#{word1} ")
  #  @string.concat(" #{word2} ")
  #  @string.concat(" #{word3} ")
  #  @string.concat(" #{word4} ")
  #  @string.concat(" #{word1} ")
  #  @string.concat(".")
  end
  get "/:operation/:number1/:number2" do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    @solution = nil
    if operation =="add"
      @solution = num1. + num2
    elsif operation == "subtract"
      @solution = num1 - num2
    elsif operation == "multiply"
      @solution = num1 * num2
    elsif operation == "divide"
      @solution = num1.to_f / num2.to_f
    end
    "#{@solution.to_s}"
  end


end