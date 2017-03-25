class PaperCollectionsController < ApplicationController
  def index
    @customer = Customer.find(params[:customer_id])
  end

  def show
  end

  def new
    @customer = Customer.find(params[:customer_id])
    @paper_collection = PaperCollection.new
    @paper_collection_items = @customer.sheets.collect do |sheet|
      @paper_collection.paper_collection_items.new(sheet: sheet)
    end
  end

  def create
    if PaperCollection.create(paper_collection_params)
      redirect_to action: 'index'
    else
      render plain: 'Oh no!'
    end
  end

  def choose_customer
  end

  private

  def paper_collection_params
    params.require(:paper_collection).permit(:date_collected, paper_collection_items_attributes: [:quantity_collected, :sheet_id])
  end
end
