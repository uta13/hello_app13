class FollowsController < ApplicationController
  # before_actionに「:authenticate_user」を追加してください
  before_action :authenticate_user

  # createアクションを追加してください
  def create
    @follow = Follow.new(follow_id: @current_user.id,follower_id: params[:user_id])
    @follow.save
    redirect_to("/users/#{params[:user_id]}")
  end

  def destroy
    @follow = Follow.find_by(follow_id: @current_user.id,follower_id: params[:user_id])
    @follow.destroy
    redirect_to("/users/#{params[:user_id]}")
  end

end
