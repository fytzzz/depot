class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,:custom_field_values,:avatar,:avatar_cache,:remove_avatar
  # attr_accessible :title, :body
  mount_uploader :avatar, AvatarUploader
  acts_as_customizable
end
