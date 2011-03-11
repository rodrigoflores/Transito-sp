require 'rubygems'
require 'sinatra'
require 'haml'
require 'lib/transito'
require 'helpers/application_helper'
require 'json'

helpers do
  include ApplicationHelper
end


get '/' do
  @lentidao, @regioes = Transito.extrair!
  haml :index
end

get '/update' do
  @lentidao, @regioes = Transito.extrair!
  {:total => @lentidao, :zonas => @regioes}.to_json
end
