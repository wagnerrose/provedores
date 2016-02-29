class CreateProvedores < ActiveRecord::Migration
  def change
    create_table :provedores do |t|
      t.string :uf, limit: 2, null: false
      t.string :municipio, limit: 30, null: false
      t.string :microRegiao, null: false
      t.string :razaoSocial, limit: 50, null: false
      t.string :numAto, null: false
      t.string :termo, null: false
      t.string :endereco, null: false
      t.string :telefone, null: false

      t.timestamps null: false
    end
  end
end
