class ProductsController < ApplicationController
    def index
        #https://elektra.vteximg.com.br/api/catalog_system/pub/products/GetProductAndSkuIds?categoryId=#{params['category_id']}&_from=1&_to=10
        #https://challenge.ektdevelopers.com/api/catalog_system/pvt/products/GetProductAndSkuIds?categoryId=#{params['category_id']}&_from=1&_to=10
        https://elektra.vteximg.com.br/api/catalog_system/pub/products/GetProductAndSkuIds?categoryId=#{params['category_id']}&_from=1&_to=10
        @products = gt_data("https://www.elektra.com.mx/api/catalog_system/pub/products/GetProductAndSkuIds?categoryId=#{params['category_id']}&_from=1&_to=10")
        @products_list = []
        @products['data'].each do |product_id|
          #https://elektra.vteximg.com.br/api/catalog_system/pub/products/ProductGet/#{product_id[0]}
          #https://challenge.ektdevelopers.com/api/catalog_system/pvt/products/ProductGet/#{product_id[0]}
          product = gt_data("https://www.elektra.com.mx/api/catalog_system/pub/products/ProductGet/#{product_id[0]}")
          if !product.empty? && !product.nil?
              @products_list.push(product)
          end
        end
    end
  
  def show
    id= params[:id]
    #https://elektra.vteximg.com.br/api/catalog_system/pub/products/#{id}/specification
    #https://challenge.ektdevelopers.com/api/catalog_system/pvt/products/#{id}/specification"
    @product = gt_data("https://www.elektra.com.mx/api/catalog_system/pub/products/#{id}/specification")
  end
end
