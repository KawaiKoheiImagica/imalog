class CommentlistsController < ApplicationController
  def create
    @cl=current_user.commentlists.build(cl_params)
    if @cl.save
      flash[:success] = 'メッセージを投稿しました。'
      redirect_to user_url(current_user)
    else
      flash.now[:danger] = 'メッセージの投稿に失敗しました。'
      redirect_to root_url
    end
  end

  def destroy
    @commentlist=Commentlist.find(params[:id])
    @commentlist.destroy
    
    flash[:success] = '履歴 は正常に削除されました'
    redirect_to user_url(current_user)
  end
  
  private
  
  def cl_params
    params.require(:commentlist).permit(:menu, :comment, :shop_id)
  end
end
