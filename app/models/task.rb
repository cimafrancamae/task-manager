class Task < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :title, presence: true
  validates :description, presence: true
  validates :due_date, presence: true
  validates :completed, presence: true
end
