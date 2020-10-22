class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @post_images = @user.post_images.page(params[:page]).reverse_order
    # このように記述することで、そのユーザ（@user）に関連付けられた投稿（.post_images）のみ、@post_imagesに渡すことができます。
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
    
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end
