class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :profile, class_name: 'UserProfile', dependent: :destroy

  accepts_nested_attributes_for :profile

  validates_associated :profile
  validates_presence_of :profile
end
