class FavoritesController < ApplicationController
  def create
    post = Micropost.find(params[:micropost_id])
    current_user.favorite(post)
    flash[:success] = 'いいねしました。'
    redirect_to root_url
  end

  def destroy
    post = Micropost.find(params[:micropost_id])
    current_user.unfavorite(post)
    flash[:success] = 'いいねをかいじょしました。'
    redirect_to root_url
  end
end
