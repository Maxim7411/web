class PostsController < ApplicationController
 def main
 @post=Post.all
 end
 
 def new
 @post=Post.new
 end
 
 def show
 @post=Post.find(params[:id])
 end
 
 def edit
 @post=Post.find(params[:id])
 end
 
 def create
 @post=Post.new(par)
 if(@post.save)
 redirect_to @post
 else
 render 'new'
 end
 end
 
 def update
 @post=Post.find(params[:id])
 if(@post.update(par))
 redirect_to @post
 else
 render 'edit'
 end
 end
 
 def destroy
 @post=Post.find(params[:id])
 @post.destroy
 redirect_to posts_path
 end
 
 private def par
 params.require(:post).permit(:title, :body)
 end
end
