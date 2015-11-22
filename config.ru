require 'first_app/app'
require 'second_app/app'

run Rack::URLMap.new(
  '/first_app' => FirstApp::App,
  '/second_app' => SecondApp::App
)
