App = Rack::Builder.new {
  use Rack::Static, urls: [''], root: 'public', index: 'index.html'

  run lambda { |env| [404, {'Content-Type' => 'text/plain'}, ['Not Found']] }
}
