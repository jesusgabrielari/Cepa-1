class Wine < ApplicationRecord
    #Tienes muchas conbinaciones
    has_many :blends 
    #Tiene muchas cepas mediante las conbinaciones
    has_many :strains, through: :blends
    #Que acepte los atributos anidados
    accepts_nested_attributes_for :blends, reject_if: :all_blank
end
