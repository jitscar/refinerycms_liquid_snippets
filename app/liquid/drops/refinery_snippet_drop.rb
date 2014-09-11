class Refinery::Snippets::SnippetDrop < Clot::BaseDrop

  self.liquid_attributes = [:created_at, :updated_at, :id, :title, :body, :page_parts]

end