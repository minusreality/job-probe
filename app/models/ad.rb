class Ad < ActiveRecord::Base
  belongs_to :user
  
  validates :site_name, :presence => true
  validates :site_url, :format => URI::regexp(%w(http https))
  
end
