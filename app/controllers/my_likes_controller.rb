class MyLikesController < ApplicationController
  def index
    @likes = Like.all
    
    @user = current_user
    
    @photos = Photo.all
    
    @my_likes = @user.liked_photos

    render("my_like_templates/show.html.erb")
  end

  def show
    @like = Like.find(params.fetch("id_to_display"))

    render("my_like_templates/show.html.erb")
  end
end