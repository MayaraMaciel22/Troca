class Pontodetroca < ActiveRecord::Base
  validates_presence_of :nome, message: "deve ser preenchido" 
  validates_presence_of :email, message: "deve ser preenchido" 
  validates_presence_of :endereco, message: "deve ser preenchido" 
  validates_size_of :nome, :minimum => 3, :maximun=>50, message: "Tamanho Inválido minino 3 maximo 50."

  validate :primeira_letra_deve_ser_maiuscula
  private
  def primeira_letra_deve_ser_maiuscula
	  	errors.add(:nome, "primeira letra deve ser maiúscula") unless nome =~ /[A-Z].*/
  end
  
end
