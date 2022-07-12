class Review < ApplicationRecord
  belongs_to :result
  belongs_to :plan
  belongs_to :treatment
  belongs_to :user
  belongs_to :provider
end
