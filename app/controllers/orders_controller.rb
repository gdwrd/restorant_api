class OrdersController < ApiController
  KEYS = %w(restorant_id name quantity phone email datetime)

  post '/new' do
    content_type :json
    @order = Order.new(order_params)
    if @order.valid?
      @order.save
      return_response @order, 'order'
    else
      return_error @order.errors
    end
  end

  private

  def order_params
    params.select { |k| KEYS.include? k }
  end
end