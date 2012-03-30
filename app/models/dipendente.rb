class Dipendente < ActiveRecord::Base
  belongs_to :ruolo
  has_many   :pagamenti
  has_many   :serate, :through => :pagamenti
  
  attr_accessible :nome, :ruolo_id
  
  validates :nome,     :presence => true, :uniqueness => true
  validates :ruolo_id, :presence => true
  
  scope :per_ruolo, order(:ruolo_id)
end
