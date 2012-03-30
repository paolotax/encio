class Ruolo < ActiveRecord::Base
  has_many :dipendenti
  
  attr_accessible :nome
  validates :nome, :presence => true, :uniqueness => true
  
  def to_s
    nome
  end
end
