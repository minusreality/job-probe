class AdminsController < ApplicationController
  # TODO: Remove this controller and model entirely because CanCan uses Roles rather than multiple user object types.
  before_filter :authenticate_admin!, :except => :sign_in
  
  def index
  end
end
