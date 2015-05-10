module Ecom
  class LineItem
    include Mongoid::Document
    include Mongoid::Timestamps

    field :purchase_id, type: String
    field :product_id, type: String
    field :price, type: Float

    belongs_to :purchase
    belongs_to :product

    def self.make_items(purchase_id, product_id, price)
      LineItem.create(purchase_id: purchase_id, product_id: product_id, price: price)
    end
  end
end
