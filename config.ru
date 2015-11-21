require 'first_app/app'
require 'rack/rewrite'

run Rack::Builder.new {
  # This allows to run this config.ru for development
  # instead of the config.ru of the main application.
  use Rack::Rewrite do
    rewrite '/first_app', '/'
    rewrite '/first_app/', '/'
    rewrite %r{/first_app/(.*)}, '/$1'
  end

  run FirstApp::App
}
