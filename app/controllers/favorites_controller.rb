class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    current_user.add_favorite(params[:id])
    flash[:success] = 'お気に入りに登録しました。'
    redirect_to root_url
  end

  def destroy
    current_user.delete_favorite(params[:id])
    flash[:success] = 'お気に入りから削除しました。'
    redirect_to root_url
  end
end
