class Test < ApplicationRecord
  validates :name, presence: true, length: {minimum: 3}

  belongs_to :teacher
  has_many :test_themas
  has_many :themas, through: :test_themas
end
