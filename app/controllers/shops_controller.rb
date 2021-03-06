class ShopsController < ApplicationController
  def index
    @users=User.all
    @commentlists=Commentlist.all
    @shops = Shop.all.page(params[:page])
  end
  
  def show
    @user = User.all
    @shops = Shop.all
    @shop = Shop.find(params[:id])
    @commentlist=Commentlist.where(shop_id: @shop.id).order('created_at DESC').page(params[:page])
    if logged_in?
        @newshop = current_user.shops.build
        @newcomment = current_user.commentlists.build
    end
  end
  
  def new
    
  end
  
  def create
    @shop = current_user.shops.build(shop_params)
    @shops=Shop.all
    if @shop.save
      flash[:success] = 'Shopが正常に登録されました'
      redirect_to shop_path(@shop)
    else
      flash[:danger] = 'Shopが登録されませんでした'
      redirect_to root_url
    end
  end

  def destroy
    @shop=Shop.find(params[:id])
    @shop.destroy
    
    flash[:success] = '履歴 は正常に削除されました'
    redirect_to root_url
  end
  
  def shop_params
    params.require(:shop).permit(:name, :latitude, :longitude)
  end
end
