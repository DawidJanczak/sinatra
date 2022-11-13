require File.expand_path('helper', __dir__)
# This needs to come first so that sinatra require goes through zeitwerk loader
require 'zeitwerk'
require 'sinatra'

# We have to use a global variable here in order for the spec to be able to access it.
# A constant would work too, but undefining that is a bit more involved.
$zeitwerk_test_app_file = settings.app_file

class ZeitwerkAppFileTest < Minitest::Test
  it 'sets app_file to the first caller ignoring Zeitwerk' do
    assert_equal __FILE__, $zeitwerk_test_app_file
  end
end
