module Ecom
  class Product
    include Mongoid::Document
    include Mongoid::Slug
    field :name, type: String
    field :description, type: String
    field :base_price, type: Float
    field :sku, type: String
    field :category_id, type: String
    field :image, type: String

    slug :name, history: true
    belongs_to :category
    has_many :line_items
    mount_uploader :image, ImageUploader
  end
end
