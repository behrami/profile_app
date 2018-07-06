class Resume < ApplicationRecord
  has_many :skills
  has_many :projects
  has_many :experiences
  has_many :educations
end
