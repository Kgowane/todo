class List < ApplicationRecord
  has_many :items
  validates :title, presence: true,
                    length: { minimum: 5 }
end
