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
    @customer = Customer.find(params[:customer_id])
  end
end
