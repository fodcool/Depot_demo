module CurrentCart
  # 用来测试 concern
  #extend ActiveSupport::Concern

  #def hello
  #  "hello"
  #end

  #module ClassMethods
  #  def hi
  #    "hi lala"
  #  end
  #end

  private
  def set_cart
    @cart = Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    @cart = Cart.create
    session[:cart_id] = @cart.id
  end

  def count_index_views
    if session[:counter].nil?
      session[:counter] = 0
    else
      session[:counter] += 1
    end
  end

  def reset_count
    session[:counter] = 0
  end
end
