class Coche < ActiveRecord::Base
	belongs_to :usuario
	validates :matricula, uniqueness: { message: "No puede estar repetido"}, presence: { message: "Campo obligatorio"}
	validates :usuario_id, presence: { message: "Campo obligatorio"}
end
