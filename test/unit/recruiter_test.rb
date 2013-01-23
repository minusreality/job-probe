require 'test_helper'

class RecruiterTest < ActiveSupport::TestCase
  test "should not save recruiter without a name" do
    r = Recruiter.new
    assert !r.save, "Saved the recruiter without a name"
  end
end
