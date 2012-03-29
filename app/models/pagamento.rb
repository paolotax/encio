class Pagamento < ActiveRecord::Base
  belongs_to :serata
  belongs_to :dipendente
end
