class PostsController < ApplicationController
  before_action :redirect_if_not_logged_in

  def new
    @post = Post.new
    @post.place_id = params["place_id"]
  end

  def create
    @post = @current_user.posts.new(params["post"])
    @post.save
    redirect_to "/places/#{@post.place.id}"
  end

end
