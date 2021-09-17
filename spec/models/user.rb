require 'rails_helper'

RSpec.describe Users, type: :model do
  it "is valid with valid attributes" do
    expect(Users.new).to be_valid
  end

  it "is not valid without a name" do
    expect(Users.new(name: nil)).to_not be_valid
  end
  it "is not valid without a studentid" do
    expect(Users.new(studentid: nil)).to_not be_valid
  end
  it "is not valid without a password" do
    expect(Users.new(password: nil)).to_not be_valid
  end
  it "is not valid without a email" do
    expect(Users.new(email: nil)).to_not be_valid
  end
  it "is not valid without a created_at" do
    expect(Users.new(created_at: nil)).to_not be_valid
  end
  it "is not valid without a updated_at" do
    expect(Users.new(updated_at: nil)).to_not be_valid
  end
  #it "is not valid without a authorisationlvl"
end

