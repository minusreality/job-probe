require 'test_helper'

class JobTest < ActiveSupport::TestCase
  test "should not save job without company_name" do
    j = Job.new
    assert !j.save, "Saved the job without a company_name"
  end
end
