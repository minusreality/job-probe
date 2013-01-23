class Job < ActiveRecord::Base
  belongs_to :user
  belongs_to :recruiter
  
  validates :company_name, :presence => true
end
