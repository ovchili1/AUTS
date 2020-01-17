class Thema < ApplicationRecord
  validates :name, presence: true, length: {minimum: 3}

  has_many :test_themas
  has_many :tests, through: :test_themas
end
