class OrdersController < ApplicationController
  def new
    book = Book.first # Only using one book format at the moment
    @order = Order.new
    @order.order_items.new(book_id: book.id)
  end

  def create
    @customer = Customer.find(params[:customer_id])
    if @customer.orders.create(order_params)
      redirect_to customer_path(@customer)
    else
      render plain: 'Oh no!'
    end
  end

  private

  def order_params
    params.require(:order).permit(:name, :due_on, order_items_attributes: [:quantity, :book_id])
  end
end
