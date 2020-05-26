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

  def create
  	@post = Post.new(post_params)
  	@post.user_id = current_user.id
  	if @post.save
  		flash[:success] = "画像投稿しました！"
  		redirect_to root_path
  	else
  		render 'new'
  	end
  end

  def destroy
  	post = Post.find(params[:id])
  	post.destroy
  	redirect_to root_path
  end

  private
  def post_params
  	params.require(:post).permit(:title, :image, :video)
  end
end
