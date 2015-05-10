module Ecom
  class Category
    include Mongoid::Document
    field :title, type: String

    has_many :products
  end
end
