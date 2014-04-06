class Site < ActiveRecord::Base

  # Validations
  validates :platform, presence: true
  validates :country, presence: true
  validates :state, presence: true
  validates :amount, presence: true
  validates :data, presence: true

end
