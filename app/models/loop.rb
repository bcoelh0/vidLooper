require 'uri'
class Loop < ActiveRecord::Base
  
  attr_accessible :url
  
  def self.this(url)
    uri = URI(url)
    if !uri.query.nil?
      code = uri.query
      code['v='] = '' 
    else
      code = uri.path
      code['/'] = ''
    end
    code = code.strip
    looper = '<iframe width="640" height="360" src="http://www.youtube.com/embed/'+code+'?autoplay=1&version=3&loop=1&playlist='+code+'" frameborder="0" allowfullscreen></iframe>'
  end
end



