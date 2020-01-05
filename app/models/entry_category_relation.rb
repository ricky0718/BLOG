class EntryCategoryRelation < ApplicationRecord
  belongs_to :entry
  belongs_to :category
end
