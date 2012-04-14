require "billboard_charts/version"
require 'open-uri'

# Per http://developer.billboard.com/docs/The_Chart_Service
#
# http://api.billboard.com/apisvc/chart/v1/list?start=10&count=15&sort=date-&format=json&callback=somefunction&api_key=txkttmnu46cb7q62dh9fdbp7
#
class BillboardCharts

  class ApiKeyNotProvided < StandardError; end

  attr_accessor :api_key

  def initialize(api_key = nil)
    raise ApiKeyNotProvided unless api_key
    @api_key = api_key
  end

  def endpoint
    'http://api.billboard.com/apisvc/chart/v1/list'  
  end

  def url
    "#{endpoint}?api_key=#{@api_key}&format=xml"
  end

  def latest
    open(url) #.read
  end
end
