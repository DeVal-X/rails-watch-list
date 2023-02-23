class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  # A list must have a unique name.
  validates :name, uniqueness: true
  validates :name, presence: true
end
