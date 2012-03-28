class User < ActiveRecord::Base
  devise :database_authenticatable, :confirmable, :lockable, :recoverable,
         :rememberable, :registerable, :trackable, :timeoutable, :validatable,
         :token_authenticatable

  attr_accessible :email, :password, :password_confirmation
  
  has_many :ads, :dependent => :destroy
  has_many :jobs, :dependent => :destroy
  has_many :recruiters, :dependent => :destroy
end
