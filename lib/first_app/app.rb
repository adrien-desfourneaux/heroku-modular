require 'rack/rewrite'

module FirstApp
  App = Rack::Builder.new {
    use Rack::Rewrite do rewrite '', '/' end # Fix bug when PATH_INFO=''

    map "/api" do
      run lambda { |env| [200, {'Content-Type' => 'text/plain'}, ['first_app']] }
    end

    use Rack::Static, urls: [''], root: __dir__ + '/../../node_modules/first_app/dist', index: 'index.html'

    run lambda { |env| [404, {'Content-Type' => 'text/plain'}, ['Not Found']] }
  }
end
