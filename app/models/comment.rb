class Comment < ApplicationRecord
  belongs_to :entry  # entriesテーブルとのアソシエーション
  belongs_to :user  # usersテーブルとのアソシエーション
end
