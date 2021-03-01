class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @initial_weight = user.initial_weight
    @target_weight = user.target_weight
    @diaries = user.diaries.order("created_at DESC")
    @diaries_reverse = user.diaries
  end
end
 