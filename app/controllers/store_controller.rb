class StoreController < ApplicationController
  include CurrentCart
  before_action :count_index_views, only: [:index]

  def index
    @products = Product.order(:title)
    @index_views = session[:counter]
  end
end
