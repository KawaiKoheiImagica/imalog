class ToppagesController < ApplicationController
  def index
      @shops = Shop.all
      if logged_in?
        @newshop = current_user.shops.build
        @newcomment = current_user.commentlists.build
      end
      
  end
end
