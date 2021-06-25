class FavoritesController < ApplicationController
  def create
     favorite = current_user.favorites.create(post_id: params[:post_id])
     favorite.save
     redirect_to posts_path, notice: "#{favorite.post.user.name}'S post has been added to favorites"
   end
   def destroy
     favorite = current_user.favorites.find_by(id: params[:id]).destroy     favorite.destro
     favorite.destroy
     redirect_to posts_path, notice: "#{favorite.post.user.name}Unpostged Mr.'s post"
   end
   def index
       @favorites = Favorite.where(user_id: @user.id).all
      @favorites = current_user.favorites
 end
end
