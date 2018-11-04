class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  # add create method here
    def create
    @post = Post.new
    @post.title = params[:title]
    @post.description = params[:description]
    @post.save
    redirect_to post_path(@post)
  end

  # <%= form_tag posts_path do %>
  #   <label>Post title:</label><br>
  #   <%= text_field_tag :title %><br>
  #
  #   <label>Post Description</label><br>
  #   <%= text_area_tag :description %><br>
  #
  #   <%= submit_tag "Submit Post" %>
  # <% end %>
end
