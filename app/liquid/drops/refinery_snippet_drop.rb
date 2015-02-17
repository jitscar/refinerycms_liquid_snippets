class Refinery::Snippets::SnippetDrop < Clot::BaseDrop

  self.liquid_attributes = [:created_at, :updated_at, :id, :title, :page_parts]

  def body
    return if @source.body.blank?
    liquid = Liquid::Template.parse @source.body.html_safe
    liquid.render(@context)
  end

end