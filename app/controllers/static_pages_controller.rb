class StaticPagesController < ApplicationController
  # Can't use before_action :authenticate_user! filter because it redirects to login.
  layout 'static_pages'

  def self.policy_class
    StaticPagePolicy
  end

  def index
    skip_policy_scope
  end
end
