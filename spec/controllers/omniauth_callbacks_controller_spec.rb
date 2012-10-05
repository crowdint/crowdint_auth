require 'spec_helper'

describe CrowdintAuth::OmniauthCallbacksController do
  describe "#user_class" do
    before do
      @klass = Class.new
      Object.const_set 'User', @klass
    end

    it "returns the User class" do
      subject.user_class.should be @klass
    end
  end

  describe "#create_user_record" do
    let(:user_class) do
      stub
    end

    it "creates the user record" do
      subject.stub(:user_class).and_return user_class
      user_class.should_receive(:create).with(:email => 'test@example.com', :name => 'Test User')
      subject.create_user_record('test@example.com', 'Test User')
    end
  end
end
