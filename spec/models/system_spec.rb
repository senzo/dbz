require 'spec_helper'

describe System do

  before(:each) do
    @user = Factory(:user)
    @attr = {:content => "value for content"}
  end

  it "should create a new instance given valid attributes" do
    @user.system.create!(@attr)
  end

  describe "user associations" do

    before(:each) do
      @system = @user.system.create(@attr)
    end

    it "should have a user attribute" do
      @system.should respond_to(:user)
    end

    it "should have the right associated user" do
      @system.user_id.should == @user.id
      @system.user.should == @user
    end
  end


  describe "validations" do

    it "should require a user id" do
      System.new(@attr).should_not be_valid
    end

    it "should require nonblank content" do
      @user.system.build(:content => "  ").should_not be_valid
    end

    it "should reject long content" do
      @user.system.build(:content => "a" * 141).should_not be_valid
    end
  end

end

