class Serata < ActiveRecord::Base
  
  has_many :pagamenti, dependent: :destroy
  has_many :dipendenti, through: :pagamenti
  
  # accepts_nested_attributes_for :pagamenti, :allow_destroy => true
  
  def crea_staff
    false
  end
  
  def dipendenti_non_pagati
    pagati = []
    self.pagamenti.pagato.each {|p| pagati << p.dipendente }
    return Dipendente.all - pagati
  end
  
  def crea_staff=(staff)
    # if staff == "true"
    #   restanti = Dipendente.per_ruolo.all - self.dipendenti
    #   restanti.each do |dipendente|
    #     self.pagamenti.build(:dipendente => dipendente)
    #   end
    # end  
  end

end
