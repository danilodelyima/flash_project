class Topic < ApplicationRecord
  belongs_to :classroom
  before_save :set_confidence, :set_reviewed

  def set_confidence
    self.confidence ||= 0
  end

  def set_reviewed
    self.reviewed ||= 0
  end

end
