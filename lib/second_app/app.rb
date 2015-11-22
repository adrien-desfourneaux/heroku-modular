module SecondApp
  App = Rack::Builder.new {
    map "/api" do
      run lambda { |env| [200, {'Content-Type' => 'text/plain'}, ['second_app']] }
    end

    use Rack::Static, urls: [''], root: __dir__ + '/../../node_modules/second_app/dist', index: 'index.html'

    run lambda { |env| [200, {'Content-Type' => 'text/plain'}, ['OK']] }
  }
end
