class Dipendente < ActiveRecord::Base
  belongs_to :ruolo
  has_many   :pagamenti
  has_many   :serate, :through => :pagamenti
end
