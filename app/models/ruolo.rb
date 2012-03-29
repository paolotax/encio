class Ruolo < ActiveRecord::Base
  has_many :dipendenti
  
  def to_s
    nome
  end
end
