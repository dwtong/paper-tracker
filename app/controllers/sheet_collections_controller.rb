class SheetCollectionsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @customer = Customer.find(params[:customer_id])
    @sheet_collection = SheetCollection.new
    @sheet_collection_items = @customer.sheets.collect do |sheet|
      @sheet_collection.sheet_collection_items.new(sheet: sheet)
    end
  end

  def create
    if SheetCollection.create(sheet_collection_params)
      render plain: 'Yay!'
    else
      render plain: 'Oh no!'
    end
  end

  private

  def sheet_collection_params
    params.require(:sheet_collection).permit(:date_collected, sheet_collection_items_attributes: [:quantity_collected, :sheet_id])
  end
end
