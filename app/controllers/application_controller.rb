class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include SetSource

  before_action :set_source

end
