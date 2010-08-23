require 'rubygems'
require 'sinatra'
require 'hpricot'
require 'open-uri'
require 'haml'
require 'helpers/application_helper'

helpers do
  include ApplicationHelper
end


get '/' do
  doc = open("http://cetsp1.cetsp.com.br/monitransmapa/agora/") { |f| Hpricot(f) }
  @lentidao = doc.search("#lentidao b").inner_html
  haml :index
end
