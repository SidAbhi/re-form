module Api
  module V1
    class PostsController < ApplicationController
      before_action :set_post, only: [:show, :edit, :update, :destroy]

      skip_before_action :verify_authenticity_token
    
      # GET /posts
      # GET /posts.json
      def index
        posts = Post.all.order(created_at: :desc)

        if posts
          render json: posts
        else
          render json: posts.errors
        end
      end
    
      # GET /posts/1
      # GET /posts/1.json
      def show
        if @post
          render json: @post
        else
          render json: @post.errors
        end
      end
    
      # GET /posts/new
      def new
        @post = Post.new
      end
    
      # GET /posts/1/edit
      def edit
      end
    
      # POST /posts
      # POST /posts.json
      def create
        @post = Post.new(post_params)
    
        respond_to do |format|
          if @post.save
            #format.html { redirect_to @post, notice: 'Post was successfully created.' }
            format.json { render :show, status: :created, location: url_for([:api, :v1, :posts, :id]) }
          else
            #format.html { render :new }
            format.json { render json: @post.errors, status: :unprocessable_entity }
          end
        end
      end
    
      # PATCH/PUT /posts/1
      # PATCH/PUT /posts/1.json
      def update
        respond_to do |format|
          if @post.update(post_params)
            #format.html { redirect_to @post, notice: 'Post was successfully updated.' }
            format.json { render :show, status: :ok, location: @post }
          else
            #format.html { render :edit }
            format.json { render json: @post.errors, status: :unprocessable_entity }
          end
        end
      end
    
      # DELETE /posts/1
      # DELETE /posts/1.json
      def destroy
        @post.destroy
        render json: {message: 'Post deleted!'}
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_post
          @post = Post.find(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def post_params
          params.require(:post).permit(:mpost)
        end
    end
  end
end
