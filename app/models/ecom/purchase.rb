module Ecom
  class Purchase
    include Mongoid::Document
    field :user_id, type: String
    field :checked_out_at, type: Time
    field :total_price, type: Float
  end
end
