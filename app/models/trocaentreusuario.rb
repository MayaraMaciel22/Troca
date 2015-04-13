class Trocaentreusuario < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :pontodetroca

  validates_presence_of :pontoorigem, message: "deve ser preenchido" 
  validates_presence_of :pontodestino, message: "deve ser preenchido" 
  validates_presence_of :estado, message: "deve ser preenchido" 
  validates_presence_of :datatroca, message: "deve ser preenchido"
  validate :primeira_letra_deve_ser_maiuscula
  private
  def primeira_letra_deve_ser_maiuscula
	  	errors.add(:pontoorigem, "primeira letra deve ser maiúscula") unless pontoorigem =~ /[A-Z].*/
	   errors.add(:pontodestino, "primeira letra deve ser maiúscula") unless pontodestino =~ /[A-Z].*/
  end
end
