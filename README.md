# CrowdintAuth

Adds the configuration to use Devise with our Crowd Interactive
Google Apps account for authentication.

# Installation

Gemfile

    gem 'crowdint_auth'

Run

    bundle install

# Usage

## Migration

Devise model needs the following extra fields:

    class AddColumnsToRankitUsers < ActiveRecord::Migration
      def change
      add_column :rankit_users, :provider, :string
      add_column :users, :uid, :string
    end

## Routes

### If your user class is User

Set up the devise routes:

    devise_scope :user do
      match 'google_apps_sign_in', :to => "crowdint_auth/omniauth_callbacks#google_apps_sign_in"
    end

    devise_for :users, controllers: { omniauth_callbacks: 'crowdint_auth/omniauth_callbacks' }

The first match will determine the url for the login. That is, your sign in link
will probably look something like:

    = link_to 'Sign In', google_apps_sign_in

### If your user class is named differently

Create your own omniauths controller:

    class Users::OmniauthCallbacksController < CrowdintAuth::OmniauthCallbacksController
      def user_class
        OtherClassName
      end
    end

And set it up on routes:

    devise_scope :user do
      match 'google_apps_sign_in', :to => "users/omniauth_callbacks#google_apps_sign_in"
    end

    devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

# About the Author

[Crowd Interactive](http://www.crowdint.com) is a leading Ruby and Rails consultancy
firm based in Mexico currently doing business with startups in the United States.
We specialize in building and growing your existing development team, by adding
engineers onsite or offsite. We pick our clients carefully, as we only work with
companies we believe in. Find out more about us on our [website](http://www.crowdint.com).
