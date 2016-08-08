require('sinatra')
require('sinatra/contrib/all')
require('json')
require_relative('models/wordformatter')

get( '/' ) do
  erb(:bio)
end

get( '/address' ) do
  content_type(:json)
  address = {
    address: '3 ARGYLE HOUSE',
    building: 'CODEBASE',
    postcode: WordFormatter.postcode('e13 zqf'),
    phone: '0131558030'
  }
  return address.to_json()
end

get( '/camel/:first/:second' ) do
  content_type(:json)
  text = "#{params[:first]} #{params[:second]}"
  result = {
    source: text,
    camel: WordFormatter.camel_case(text)
  }
  return result.to_json()
end

get ( '/camel/:first/:second/:third' ) do
  content_type(:json)
  text = "#{params[:first]} #{params[:second]} #{params[:third]}"
  result = {
    source: text,
    camel: WordFormatter.camel_case(text)
  }
  return result.to_json()
end

