class Agencia < ApplicationRecord
  belongs_to :departamento
  has_many :personal
end
