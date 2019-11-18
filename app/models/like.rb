class Like < ApplicationRecord
  belongs_to :entry,counter_cache: :likes_count
  belongs_to :user

  validates :user_id, presence: true
  validates :entry_id, presence: true
  validates_uniqueness_of :entry_id, scope: :user_id
end
