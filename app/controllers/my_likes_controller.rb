class MyLikesController < ApplicationController
  def index
    @likes = Like.all
    
    @my_likes = @likes.where()

    render("like_templates/index.html.erb")
  end

  def show
    @like = Like.find(params.fetch("id_to_display"))

    render("like_templates/show.html.erb")
  end
end