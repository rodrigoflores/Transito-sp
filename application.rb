require 'rubygems'
require 'sinatra'
require 'haml'
require 'lib/transito'
require 'helpers/application_helper'

helpers do
  include ApplicationHelper
end


get '/' do
  @lentidao, @regioes = Transito.extrair!
  haml :index
end
