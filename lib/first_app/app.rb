module FirstApp
  App = Rack::Builder.new {
    map "/api" do
      run lambda { |env| [200, {'Content-Type' => 'text/plain'}, ['first_app']] }
    end

    use Rack::Static, urls: [''], root: __dir__ + '/../../node_modules/first_app/dist', index: 'index.html'

    run lambda { |env| [200, {'Content-Type' => 'text/plain'}, ['OK']] }
  }
end
