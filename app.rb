require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/' do

  end

  get '/reversename/:name' do
    @r_name = params[:name].reverse
    "#{@r_name}"
  end

  get '/square/:number' do
    @num = params[:number].to_i*params[:number].to_i
    "#{@num}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]*params[:number].to_i
    "#{@phrase}"

  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do  
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  
  get '/:operation/:number1/:number2' do
  @num1 = params[:number1].to_i
  @num2 = params[:number2].to_i
  @op = params[:operation]

  case @op
  when "add"
    @answer = @num1 + @num2
  when "subtract"
    @answer = @num1 - @num2
  when "multiply"
    @answer = @num1 * @num2
  when "divide"
    @answer = @num1 / @num2 
  end

  @answer.to_s
  
  #   @answer = (params[:number1].to_i)params[:operation](params[:number2].to_i)

  end

end