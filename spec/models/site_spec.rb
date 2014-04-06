require 'spec_helper'

# Site has fields: 
describe Site do
  before { @site = Site.new(
    platform: "Rails",
    country: "United States of America",
    state: "California",
    amount: 100,
    data: Time.now) }

  subject { @site }

  it { should respond_to(:platform) }
  it { should respond_to(:country) }
  it { should respond_to(:state) }
  it { should respond_to(:amount) }
  it { should respond_to(:data) }

  

end
