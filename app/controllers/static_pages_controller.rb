class StaticPagesController < ApplicationController
  def home

    @countries_count_amount = Site.group("country").sum("amount", order: "sum_amount DESC")
    @states_count_amount = Site.group("state").sum("amount", order: "sum_amount DESC")
    @site_ids_count = Site.site_ids_count
    @platforms_count = Site.platforms_count

    @country_platform_amount = Site.country_platform_amount
    @country_site_id_amount = Site.country_site_id_amount
    @country_state_amount = Site.country_state_amount
    @country_date_amount = Site.country_date_amount

    @date_platform_amount = Site.date_platform_amount
    @date_state_amount = Site.date_state_amount
    @date_site_id_amount = Site.date_site_id_amount
    @date_country = Site.date_country
  end
end