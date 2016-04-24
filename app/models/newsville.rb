class Newsville < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  
  validates :title, uniqueness: true
end
