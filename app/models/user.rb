class User < ActiveRecord::Base
  has_many :photos
  has_many :tags
  has_many :photos, through: :tags

  has_secure_password

  validates_uniqueness_of :email
end
