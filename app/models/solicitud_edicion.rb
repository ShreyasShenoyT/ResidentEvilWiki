class SolicitudEdicion < ApplicationRecord
  self.table_name = "solicitudes_edicion"
  
  belongs_to :blog
  belongs_to :usuario, class_name: 'User'
  
  has_one_attached :attachment

  validates :descripcion, presence: true
  validates :estado, inclusion: { in: ['pendiente', 'aceptado', 'rechazado'] }
end
