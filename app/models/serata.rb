class Serata < ActiveRecord::Base
  
  has_many :pagamenti
  has_many :dipendenti, through: :pagamenti
  
  accepts_nested_attributes_for :pagamenti, :allow_destroy => true
  
  def crea_staff
    false
  end
  
  def crea_staff=(staff)
    if staff == "true"
      
      restanti = Dipendente.per_ruolo.all - self.dipendenti
      
      restanti.each do |dipendente|
        self.pagamenti.build(:dipendente => dipendente)
      end
    end  
  end

end
