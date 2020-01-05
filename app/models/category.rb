class Category < ApplicationRecord
  has_many :entry_category_relations
  has_many :entrys, through: :entry_category_relations
end
