class Car < ActiveRecord::Base
  belongs_to :user
  has_many :comments
end
