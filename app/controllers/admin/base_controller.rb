# The AdminController is the parent class that makes sure all administrator actions
# require a logged-in User with an admin Role.
class Admin::BaseController < ApplicationController
  layout 'admin/admin'
  before_filter :authenticate_user!, :except => [:show]
  def index
  end
end
