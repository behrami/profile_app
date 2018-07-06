class Resume < ApplicationRecord
  belongs_to :user

  has_many :skills
  has_many :projects
  has_many :experiences
  has_many :educations
  
  accepts_nested_attributes_for :skills
  accepts_nested_attributes_for :projects
  accepts_nested_attributes_for :experiences
  accepts_nested_attributes_for :educations
end
