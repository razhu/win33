require 'rails_helper'

RSpec.describe Advertise, :type => :model do
  it "Create one advertise and validate" do
    advertise = create(:advertise)
    expect(advertise.price).to eq(9.99)

    advertise = build(:not_valid_advertise)
    expect(advertise.valid?).to eq(false)
    expect(advertise.errors.size).to eq(3)

    advertise = build(:blank_advertise)
    expect(advertise.valid?).to eq(false)
    expect(advertise.errors.size).to eq(2)

    debugger
  end
end
