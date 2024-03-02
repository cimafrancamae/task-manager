class Category < ApplicationRecord
  belongs_to :user
  has_many :tasks, dependent: :destroy

  has_rich_text :content

  validates :name, presence: true
  validates :content, presence: true
end
