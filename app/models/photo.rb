class Photo < ActiveRecord::Base
  belongs_to :user
  has_many :tags
  has_many :users, through: :tags
end
