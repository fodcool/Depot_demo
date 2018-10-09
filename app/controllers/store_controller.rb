class StoreController < ApplicationController
  include CurrentCart
  before_action :count_index_views, :set_cart, only: [:index]

  def index
    @products = Product.order(:title)
    @index_views = session[:counter]
  end
end
