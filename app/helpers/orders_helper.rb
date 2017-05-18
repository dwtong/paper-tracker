module OrdersHelper
  def paper_sources(paper_type)
    Paper.where(paper_type: paper_type).map{ |paper| [paper.id, "#{paper.customer.name} (Ecoloop: #{paper.ecoloop_quantity}, Offset: #{paper.offset_quantity})"] }.to_h
  end
end
