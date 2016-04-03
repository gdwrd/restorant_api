class AtmosferesController < ApiController
  get '/' do
    content_type :json
    return_response Atmosfere.all
  end
end