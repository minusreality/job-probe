require 'test_helper'

class AdTest < ActiveSupport::TestCase
  test "should not save ad without site_name" do
    ad = Ad.new
    assert !ad.save, "Saved the ad without a site_name"
  end
  
  test "should not save ad with a malformed URL" do
    ad = Ad.new
    ad.site_url = "bork"
    assert !ad.save, "Saved the ad with malformed URL"
  end
end
