require_relative 'config/environment'

configure do
  enable :sessions
  set :session_secret, "secret"
end

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/checkout' do
    session[:item] = params[:item]
    @session = session
    erb :checkout
  end
end


# require_relative 'config/environment'

# class App < Sinatra::Base
  
#   configure do
#     enable :sessions
#     set :session_secret, "secret"
#   end

#   get '/' do
#     erb :index
#   end
  
#   post 'checkout/' do
# #     #@analyzed_text = TextAnalyzer.new(params[:user_text])
#     @item = params[:item]
#     @price = params[:price]
     
#     session["item"] = @item
#     @sesson = session
    
#     erb :checkout
#   end

# # end
# end