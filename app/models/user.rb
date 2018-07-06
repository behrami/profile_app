class User < ApplicationRecord
  has_secure_password
  
  has_one :resume
  has_many :blogs

  accepts_nested_attributes_for :resume

end
