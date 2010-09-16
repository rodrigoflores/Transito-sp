require 'hpricot'
require 'open-uri'

module Transito

  class << self
    def extrair!
      doc = open("http://cetsp1.cetsp.com.br/monitransmapa/agora/") { |f| Hpricot(f) }
      lentidao = doc.search("#lentidao b").inner_html

      regioes = [:norte, :leste, :centro, :oeste, :sul].inject({}) do |hash, regiao|
        div = "##{regiao.to_s.capitalize}Lentidao"
        hash[regiao.to_s] = doc.search(div).inner_html.split(" ").first
        hash
      end

      [lentidao, regioes]
    end
  end
end