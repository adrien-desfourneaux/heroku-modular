require 'app'
require 'first_app'
require 'second_app'

run Rack::URLMap.new(
  '/' => App,
  '/first_app' => FirstApp::App,
  '/second_app' => SecondApp::App
)
