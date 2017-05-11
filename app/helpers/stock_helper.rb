module StockHelper
  def total_stock
    @stock_quantities = {}
    PaperType.all.each { |paper_type| @stock_quantities[paper_type] = paper_type.papers.sum(&:offset_quantity) }
  end
end
