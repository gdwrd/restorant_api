require 'sinatra/base'

Dir.glob('./app/{helpers,controllers}/*.rb').each { |file| require file }

map('/') { run ApiController }
map('/api/restorants/') { run RestorantsController }