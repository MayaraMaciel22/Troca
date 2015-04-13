class CreateTrocaentreusuarios < ActiveRecord::Migration
  def change
    create_table :trocaentreusuarios do |t|
      t.references :usuario, index: true
      t.references :pontodetroca, index: true
      t.string :pontoorigem
      t.string :pontodestino
      t.string :estado
      t.string :datatroca

      t.timestamps null: false
    end
    add_foreign_key :trocaentreusuarios, :usuarios
    add_foreign_key :trocaentreusuarios, :pontodetrocas
  end
end
