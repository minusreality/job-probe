class HomeController < ApplicationController
  before_filter :authenticate_any!, :only => :token

  def index
  end

  def token
  end
end
