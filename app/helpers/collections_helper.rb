module CollectionsHelper

  def collection_quantity_from_type(collection, paper_type)
    transaction = collection.paper_transactions.includes(paper: :paper_type).find_by(paper_types: { name: paper_type.name, size: paper_type.size })
    transaction.nil? ? 0 : transaction.quantity
  end
end
