class Usuario < ActiveRecord::Base
	has_many :coches
	validates :usuario, uniqueness: { message: "No puede estar repetido"}, presence: { message: "Campo obligatorio"}
end
