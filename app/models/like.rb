class Like < ApplicationRecord
  belongs_to :user
  belongs_to :entry
  counter_culture :entry
  validates :user_id, presence: true
  validates :entry_id, presence: true
end
