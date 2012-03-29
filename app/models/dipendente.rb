class Dipendente < ActiveRecord::Base
  belongs_to :ruolo
  has_many   :pagamenti
  has_many   :serate, :through => :pagamenti
  
  scope :per_ruolo, order(:ruolo_id)
end
