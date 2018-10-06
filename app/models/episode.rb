class Episode < ApplicationRecord
  belongs_to :book
  has_many :lines
end
