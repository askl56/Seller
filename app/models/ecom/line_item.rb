module Ecom
  class LineItem
    include Mongoid::Document
    include Mongoid::Timestamps

    field :purchase_id, type: String
    field :product_id, type: String
    field :price, type: Float

    belongs_to :purchase
    belongs_to :product
  end
end
