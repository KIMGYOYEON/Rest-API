class PostsController < ApplicationController

  # before_action(:find_post, {only: [:show, :edit, :update, :destroy]})
  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def new
  end

  def create
    # Post.create(
    #   title: params[:title],
    #   content: params[:content]
    # )
    @post = Post.new(post_params)
      # title: params["post"]["title"],
      # content: params["post"]["content"]
      # title: params["post"],
      # content: params["post"]

    # )
    if @post.save
      redirect_to '/'
    else
      flash[:alert] = "제목과 내용은 필수로 입력해주셔야 합니다"
      # redirect_to 'posts/new'
      redirect_to :back
    end
  end

  def show
    # find_post
  end

  def edit
    # @post = Post.find(params[:id])
    # find_post
  end

  def update
    # @post = Post.find(params[:id])
    # find_post
    @post.update(post_params)
      # title: params[:title],
      # content: params[:content]
    # )
    # redirect_to "/posts/#{@post.id}"
    redirect_to @post
  end

  def destroy
    # @post = Post.find(params[:id])
    # find_post
    @post.destroy
    redirect_to '/'
  end

  private
  #MVC 로직과 상관없는 녀석들만 private으로 선언해준다
  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end

end
