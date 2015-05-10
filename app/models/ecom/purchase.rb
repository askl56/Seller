module Ecom
  class Purchase
    include Mongoid::Document
    include Mongoid::MultiParameterAttributes
    include Mongoid::Timestamps

    field :user_id, type: String
    field :checked_out_at, type: Time
    field :total_price, type: Float

    has_many :line_items, :dependent => :destroy
    belongs_to :user

    def recalculate_price!
      self.total_price = line_items.inject(0.0) { |sum, line_item| sum += line_item.price}
      save!
    end
  end
end
