class Public::FavoritesController < ApplicationController
  def create
    pub = Pub.find(params[:pub_id])
    favorite = current_user.favorites.new(pub_id: pub.id)
    favorite.save
    redirect_to pubs_path
  end

  def destroy
    pub = Pub.find(params[:pub_id])
    favorite = current_user.favorites.find_by(pub_id: pub.id)
    favorite.destroy
    redirect_to pubs_path
  end
end
