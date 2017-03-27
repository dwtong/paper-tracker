class CollectionsController < ApplicationController
  def index
    @customer = Customer.find(params[:customer_id])
  end

  def show
  end

  def new
    @customer = Customer.find(params[:customer_id])
    @collection = Collection.new
    @collection_items = @customer.papers.where(reserved_for_ecoloop: false).collect do |paper|
      @collection.paper_transactions.new(paper: paper)
    end
  end

  def create
    if Collection.create(collection_params)
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
