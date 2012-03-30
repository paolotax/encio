# encoding: utf-8

module ApplicationHelper
  
  def pretty_prezzo( prezzo, *args )
    content_tag :div, class: 'pretty-prezzo' do
      content_tag :strong do
        raw(
          "€ #{prezzo.to_i.to_s}," +
          content_tag( :sup, ((prezzo - prezzo.to_i) * 100).to_i.to_s.ljust(2, '0')  )
        )
      end  
    end
  end

end
