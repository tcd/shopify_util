require "test_helper"

class DummyTest < ActiveSupport::TestCase

  test "reading config options from the dummy app" do
    assert(Dummy::Application.config.api_only)
  end

end
