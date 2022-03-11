require 'rails_helper'
require 'user'

RSpec.describe User, type: :model do
  before do
    @user = User.new(email: "abc@test.com", first_name: "test123", last_name: "abc", password: "12345", contact: 1234)
  end
  
  it "is valid with valid attributes" do
    expect(@user).to be_valid
  end

  it "is not valid without a first_name" do
    @user.first_name = nil
    expect(@user).to_not be_valid
  end

  it "is not valid without a last_name" do
    @user.last_name = nil
    expect(@user).to_not be_valid
  end

  it "is not valid without a email" do
    @user.email = nil
    expect(@user).to_not be_valid
  end

  it "is not valid without a password" do
    @user.password = nil
    expect(@user).to_not be_valid
  end
  
  it "is not valid without a contact" do
    @user.contact = nil
    expect(@user).to_not be_valid
  end
end
