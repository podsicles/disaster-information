class UserPostsController < ApplicationController
  def index
    @posts = current_user.posts
  end

  def comments
    @comments = current_user.comments
  end
end