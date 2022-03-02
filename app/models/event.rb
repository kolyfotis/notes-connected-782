class Event < ApplicationRecord
  belongs_to :genre
  belongs_to :user

  validates :title, length: { minimum: 4, maximum: 100 }, presence: true
  validates :date, presence: true
  validates :details, presence: true, length: { minimum: 10, maximum: 300 }
end
