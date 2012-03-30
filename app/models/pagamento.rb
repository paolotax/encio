class Pagamento < ActiveRecord::Base
  belongs_to :serata
  belongs_to :dipendente
  
  default_scope includes(:dipendente => [:ruolo]).order('dipendenti.ruolo_id')
  
  scope :staff_ordine, includes(:dipendente => [:ruolo]).order('ruolo.nome asc')
  
  scope :non_pagato, where("importo is null or importo = 0")
  scope :pagato,     where("importo is not null or importo > 0 or importo < 0")
  
  
end
