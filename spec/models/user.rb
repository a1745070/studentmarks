require 'rails_helper'

RSpec.describe Users, type: :model do
  it "is valid with valid attributes" do
    expect(Users.new).to be_valid
  end

  it "is not valid without a name"
  it "is not valid without a studentid"
  it "is not valid without a password"
  it "is not valid without a email"
  it "is not valid without a created_at"
  it "is not valid without a updated_at"
  it "is not valid without a authorisationlvl"
end

