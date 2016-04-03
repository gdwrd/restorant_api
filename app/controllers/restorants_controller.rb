class RestorantsController < ApiController
  KEYS = %w(latitude longitude)
  KEYS_WITH_ATMOSFERE = %w(latitude longitude atmosfere_ids)

  LONG_VALUES = [-180, 180]
  LAT_VALUES = [-90, 90]

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
    unless keys.all? { |k| params.has_key?(k) } && KEYS.all? { |k| params[k].numeric? } && valid_position?
      return_error 'Wrong parameters'
    end
  end

  def restorant_params atmosfere = false
    keys = atmosfere ? KEYS_WITH_ATMOSFERE : KEYS
    params.fetch_values(*keys)
  end

  def valid_position?
    params['longitude'].to_f.between?(*LONG_VALUES) && params['latitude'].to_f.between?(*LAT_VALUES)
  end
end