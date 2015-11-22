module FirstApp
  class Logger
    def initialize(app); @app = app; end
    def call(env); puts env['PATH_INFO'].inspect; @app.call(env); end
  end

  App = Rack::Builder.new {
    use Logger

    map "/api" do
      run lambda { |env| [200, {'Content-Type' => 'text/plain'}, ['first_app']] }
    end

    use Rack::Static, urls: [''], root: __dir__ + '/../../node_modules/first_app/dist', index: 'index.html'

    run lambda { |env| [200, {'Content-Type' => 'text/plain'}, ['OK']] }
  }
end
