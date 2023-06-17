class Pet < ApplicationRecord
  self.inheritance_column = :_type_disabled
  # Resto de la definición del modelo
end
