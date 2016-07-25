require "./config/dependencies"

class App < Sinatra::Base
  # YOU NEED DIS
  set :public_folder, File.dirname(__FILE__) + '/assets'
  # AND DIS
  use Rack::MethodOverride

  get "/" do
    @lists = List.all

    erb :"homepage.html"
  end

  get "/lists/" do
    @lists = List.all
    erb :"lists.html"
  end

  post "/lists" do
    List.create(params["lists"])
    redirect to("/")
  end

  post "/lists/" do
  @items = Item.all
  @items.add_item!
  erb :"lists.html"
end



  run! if app_file == $PROGRAM_NAME
end
