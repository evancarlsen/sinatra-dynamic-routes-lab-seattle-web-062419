require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get '/reversename/:name' do
    @name= params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @x = params[:number]
    ((@x.to_i)**2).to_s
  end

  get '/say/:number/:phrase' do
    @x = params[:number]
    @phrase = params[:phrase]
    new_string = ""
    @x.to_i.times do
       new_string<<@phrase
     end
     new_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]

    str = @w1 + " " + @w2 + " " + @w3 + " " + @w4 + " " + @w5 + "."
    str
  end

  get '/:operation/:number1/:number2' do
    @a = params[:number1].to_i
    @b = params[:number2].to_i
    x = 0 
    case params[:operation]
    when "add"
      x = @a + @b
    when "subtract"
      x = @a - @b
    when "multiply"
      x = @a * @b
    when "divide"
      x = @a / @b
    end
x.to_s
  end
end