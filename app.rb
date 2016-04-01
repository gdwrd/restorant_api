ENV['RACK_ENV'] ||= 'development'

require 'bundler'
Bundler.require :default, ENV['RACK_ENV'].to_sym

require 'sinatra'
require 'sinatra/activerecord'
require 'json'

require_relative 'app/models/restorant'
require_relative 'app/models/atmosfere'
require_relative 'app/models/order'

class RestorantApi < Sinatra::Base

  get '/' do
    content_type :json
    Restorant.new.to_json
  end
end