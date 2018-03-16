class User < ApplicationRecord
  rolify
  after_create :assign_default_role, :assign_new_business
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, 
         :validatable
  validates :name, presence: true, length: { minimum: 2, maximum: 48,
    too_long: "%{count} characters is the maximum allowed" }
  validates_uniqueness_of :email

  has_one :business


  # This sets the user as a default user for Rolify.
  def assign_default_role
    self.add_role(:default_user) if self.roles.blank?
  end


  # On Sign-up this adds an associated business acount to the user.
  def assign_new_business
    newbiz = Business.new
    newbiz.user_id = self.id
    newbiz.more_than_one_location = false
    newbiz.signed_up = false
    newbiz.save(validate: false)
  end

end
