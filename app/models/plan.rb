class Plan < ApplicationRecord
  belongs_to :company
  has_many :reviews
end
