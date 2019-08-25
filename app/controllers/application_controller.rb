require 'net/http'
require 'json'
class ApplicationController < ActionController::Base
  before_action :get_vapid

  def gt_data(url_from)
    url = url_from
    uri = URI(url)
    response = Net::HTTP.get(uri)
    response['Content-Type']
    response['application/json']
    p "==============="
    @data = JSON.parse(response)
  end

  def get_vapid
    @decodedVapidPublicKey = Base64.urlsafe_decode64('BGGrRXcHFUaw6J_30n6epTkLDS8zMprZk112r6fmfOMMYrKrNLI9OA5EIrzuyPPmHodSrkqnzX3FXhq5jQ-aW4c=').bytes
  end

end
