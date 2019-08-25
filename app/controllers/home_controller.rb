
class HomeController < ApplicationController
  
  def index
    @data = gt_data("https://challenge.ektdevelopers.com/api/catalog_system/pvt/brand/list")
  end
end
