module PaperCollectionsHelper
  def render_paper_type(paper_type)
    "#{paper_type.name.titleize} #{paper_type.size.capitalize}"
  end
end
