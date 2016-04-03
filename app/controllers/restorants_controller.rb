class RestorantsController < ApiController
  KEYS = ['latitude', 'longitude']
  KEYS_WITH_ATMOSFERE = ['latitude', 'longitude', 'atmosfere_ids']

  get '/near' do
    content_type :json
    check_params
    return_response Restorant.nearby(restorant_params)
  end

  get '/near_by' do
    content_type :json
    check_params(atmosfere: true)
    return_response Restorant.near_with_atmosfere(restorant_params(atmosfere: true))
  end

  private

  def check_params atmosfere = false
    keys = atmosfere ? KEYS_WITH_ATMOSFERE : KEYS
    unless keys.all? { |k| params.has_key? k }
      return_error 'Wrong parameters'
    end
  end

  def restorant_params atmosfere = false
    keys = atmosfere ? KEYS_WITH_ATMOSFERE : KEYS
    params.fetch_values(*keys)
  end
end