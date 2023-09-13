class Public::FavoritesController < ApplicationController
  def create
    pub = Pub.find(params[:pub_id])
    favorite = current_user.favorites.new(pub_id: pub.id)
    favorite.save
    redirect_to pub_path(pub)
  end

  def destroy
  end
end
