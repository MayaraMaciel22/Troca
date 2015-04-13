class CreatePontodetrocas < ActiveRecord::Migration
  def change
    create_table :pontodetrocas do |t|
      t.string :nome
      t.string :endereco
      t.string :email

      t.timestamps null: false
    end
  end
end
