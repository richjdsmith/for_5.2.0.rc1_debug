class Business < ApplicationRecord
  extend FriendlyId
  validates :name, :custom_url,  presence: true
  validates_uniqueness_of :custom_url, :slug
  validates_format_of :custom_url, :with => /\A[a-z0-9]+\z/i
  belongs_to :user

  friendly_id :custom_url, use: [:slugged, :finders]





end
