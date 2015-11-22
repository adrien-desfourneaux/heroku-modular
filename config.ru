require 'second_app/app'
require 'rack/rewrite'

run Rack::Builder.new {
  # This allows to run this config.ru for development
  # instead of the config.ru of the main application.
  use Rack::Rewrite do
    rewrite '/second_app', '/'
    rewrite '/second_app/', '/'
    rewrite %r{/second_app/(.*)}, '/$1'
  end

  run SecondApp::App
}
