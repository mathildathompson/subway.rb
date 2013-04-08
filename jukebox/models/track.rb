require 'soundcloud'

class Track < ActiveRecord::Base 

def self.search_tracks(search)

client = Soundcloud.new(:client_id => 'af7252ea4824fd47f04dcbc42a342873')
tracks = client.get('/tracks', :q => search)

end

end