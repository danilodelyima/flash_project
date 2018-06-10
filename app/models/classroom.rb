class Classroom < ApplicationRecord
  has_many :topics, inverse_of: :classroom
  accepts_nested_attributes_for :topics, reject_if: :all_blank, allow_destroy: true
  belongs_to :user
end
