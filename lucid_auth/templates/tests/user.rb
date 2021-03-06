require 'spec_helper'

describe <%= user_class_name %> do
  before(:each) do
    @valid_attributes = {
      :username => "NewUser",
      :password => "12345678",
      :password_confirmation => "12345678",
      :email => "newuser@newuser.com"
    }
  end
  
  it "should create a new instance given valid attributes" do
    <%= user_singular_name.capitalize %>.create!(@valid_attributes)
  end

  it "should succeed creating a new :valid_user from the Factory" do
    Factory.create(:valid_user)
  end

  it "should invalid :invalid_user factory" do
    Factory.build(:invalid_user).should be_invalid
  end
end
