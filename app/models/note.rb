require 'date'
class Note < ActiveRecord::Base
  include ActiveModel::Validations

  validate :validate_deadline
  validates :title, presence: true

  private
  def deadline_age
    Date.today.mjd - self.deadline.mjd
  end

  def validate_deadline
    errors.add(:deadline,"already passed #{deadline_age} days ago") unless deadline_age < 0
  end
end
