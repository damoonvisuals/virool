class Site < ActiveRecord::Base

  # Validations
  validates :site_id, presence: true, numericality: {greater_than: 0}
  validates :platform, presence: true
  validates :country, presence: true
  validates :state, presence: true
  validates :amount, presence: true
  validates :data, presence: true

  # SQL Queries:
  # scope :countries_count_amount
  #   select("country, SUM(amount) AS amount_sum").group("country").order("amount_sum DESC")
  # scope :states_count_amount
  #   select("state, SUM(amount) AS amount_sum").group("state").order("amount_sum DESC")
  scope :platforms_count,
    select("platform, count(*) AS platforms_count").group("platform").order("platforms_count DESC")
  scope :site_ids_count,
    select("site_id, count(*) AS site_ids_count").group("site_id").order("site_ids_count DESC")

  scope :country_platform_amount,
    select("country, platform, amount").order("country ASC")
  scope :country_site_id_amount,
    select("country, site_id, amount").order("country ASC")
  scope :country_state_amount,
    select("country, state, amount").order("country ASC")
  scope :country_date_amount,
    select("country, data, amount").order("country ASC")

  scope :date_platform_amount,
    select("data, platform, amount").order("data ASC")
  scope :date_state_amount,
    select("data, state, amount").order("data ASC")
  scope :date_site_id_amount,
    select("data, site_id, amount").order("data ASC")
  scope :date_country,
    select("data, country").order("data ASC")

end
