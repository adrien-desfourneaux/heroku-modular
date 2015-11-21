module FirstApp
  App = Rack::Builder.new {
    use Rack::Static, urls: [''], root: __dir__ + '/../../node_modules/first_app/dist', index: 'index.html'

    map "/api" do
      run lambda { |env| [200, {'Content-Type' => 'text/plain'}, ['first_app']] }
    end

    run lambda { |env| [200, {'Content-Type' => 'text/plain'}, ['OK']] }
  }
end
