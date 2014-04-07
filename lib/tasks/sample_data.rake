namespace :db do
  desc "Fill database table with sample data (1000 entries)"
  task populate: :environment do
    Site.create!(site_id: 1,
                 platform: "Rails",
                 country: "United States of America",
                 state: "California",
                 amount: 1000,
                 data: Time.now)
    999.times do |n|
      platform  = Faker::Address.city
      country  = Faker::Address.country
      state = Faker::Address.state
      amount = Faker::Number.number(4)
      data = Time.at(rand * Time.now.to_i) # Random Date
      site_id = rand(100) + 1

      Site.create!(platform: platform,
                   country: country,
                   state: state,
                   amount: amount,
                   data: data,
                   site_id: site_id)
    end
  end
end