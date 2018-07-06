class User < ApplicationRecord
  has_secure_password
  has_many :resumes
  has_many :blogs
  
end
