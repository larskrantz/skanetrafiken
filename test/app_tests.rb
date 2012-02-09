#!/opt/local/bin/ruby1.9
$:.unshift File.dirname("../app.rb")
require "app"

require 'test/unit'
require "rubygems"
class GetResponseFake
  def get_response_body(uri)
    if (uri.path.include?("querystation"))
      return File.open("GetStartEndPoint_querystation.xml", "r").read
    end
    if (uri.path.include?("resultspage"))
      return File.open("GetJourney_resultspage.xml", "r").read
    end
    raise "Uri?"
  end
end

class AppTests < Test::Unit::TestCase
  def setup
    @app = App.new(:get_response=>GetResponseFake.new)
  end
  def test_get_times
    @app.get_times("Lund","Malmö",Time.now)
  end
end