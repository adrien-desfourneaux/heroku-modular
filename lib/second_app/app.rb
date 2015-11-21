module SecondApp
  App = Rack::Builder.new {
    use Rack::Static, urls: [''], root: __dir__ + '/../../node_modules/second_app/dist', index: 'index.html'

    map "/api" do
      run lambda { |env| [200, {'Content-Type' => 'text/plain'}, ['second_app']] }
    end

    run lambda { |env| [200, {'Content-Type' => 'text/plain'}, ['OK']] }
  }
end
