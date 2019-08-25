class ProductsController < ApplicationController
    def index
        @products = gt_data("https://challenge.ektdevelopers.com/api/catalog_system/pvt/category/tree/320/")
    end
end
