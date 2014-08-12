class Car < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  
  validates :car, presence: true, uniqueness: {case_sensitive: false}
  
end
