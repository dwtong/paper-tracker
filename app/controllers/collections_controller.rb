class CollectionsController < ApplicationController
  def index
    @customer = Customer.find(params[:customer_id])
  end

  def show
  end

  def new
    @customer = Customer.find(params[:customer_id])
    @collection = Collection.new
    @paper_transactions = @customer.papers.collect do |paper|
      @collection.paper_transactions.new(paper: paper)
    end
  end

  def create
    stock_type = params[:donate_to_offset].blank? ? :offsetted : :ecolooped
    @collection = Collection.new(collection_params)
    @collection.paper_transactions.each { |pt| pt.assign_attributes(stock_type: stock_type) }

    if @collection.save
      redirect_to action: 'index'
    else
      render plain: 'Oh no!'
    end
  end

  def choose_customer
  end

  private

  def collection_params
    params.require(:collection).permit(:collected_on, paper_transactions_attributes: [:quantity, :paper_id])
  end
end
