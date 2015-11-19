require 'grape'

module FirstApp
  class API < Grape::API
    get '/' do
      status 200
    end
  end
end

