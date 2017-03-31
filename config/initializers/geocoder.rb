Geocoder::Configuration.timeout = 15
# language to use (for search queries and reverse geocoding):
Geocoder::Configuration.language = :ru
Geocoder::Configuration.units = :km
#distances
# use a proxy to access the service:
#Geocoder::Configuration.http_proxy  = "10.78.0.7:3128"
# geocoding service (see below for supported options):
#Geocoder::Configuration.lookup = :google

# to use an API key:
# FIXME:Need to move this to a different key in production
#Geocoder::Configuration.api_key = "XXX HIDDEN XXX"

# geocoding service request timeout, in seconds (default 3):
##Geocoder::Configuration.timeout = 10

# use HTTPS for geocoding service connections:
#Geocoder::Configuration.use_https = true



#пример
# config/initializers/geocoder.rb
#Geocoder.configure(

  # geocoding service (see below for supported options):
 # :lookup => :yandex,

  # IP address geocoding service (see below for supported options):
  #:ip_lookup => :maxmind,

  # to use an API key:
  #:api_key => "...",

  # geocoding service request timeout, in seconds (default 3):
  #:timeout => 5,

  # set default units to kilometers:
  #:units => :km,

  # caching (see below for details):
  #:cache => Redis.new,
  #:cache_prefix => "..."

#)
