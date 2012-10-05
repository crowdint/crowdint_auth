class CrowdintAuth::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def user_class
    ::User
  end

  def create_user_record(email, name)
    user_class.create(:email => email, :name => name)
  end
end
