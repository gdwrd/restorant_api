require 'sinatra/base'

Dir.glob('./app/{controllers}/*.rb').each { |file| require file }

map('/') { run ApiController }
map('/api/atmosfere') { run AtmosferesController }
map('/api/restorants') { run RestorantsController }
map('/api/orders') { run OrdersController }
