class Entry < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :iine_users, through: :likes, source: :user
  has_many :entry_category_relations
  has_many :categories, through: :entry_category_relations

  def self.search(search)
    return Entry.all unless search
    Entry.where('text LIKE(?)', "%#{search}%")
  end
   # マイクロポストをいいねする
  def iine(user)
    likes.create(user_id: user.id)
  end

  # マイクロポストのいいねを解除する（ネーミングセンスに対するクレームは受け付けません）
  def uniine(user)
    likes.find_by(user_id: user.id).destroy
  end
  def iine?(user)
    iine_users.include?(user)
  end
end
