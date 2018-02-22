class Ideas < Sinatra::Base
  get "/" do
    erb :home
  end

  get "/apps/new" do
    erb :new
  end

  get "/apps" do
    @apps = App.all
    erb :apps
  end

  post "/apps" do
    App.create(
      title: params[:title],
      description: params[:description]
    )
    redirect "/apps"
  end
end
