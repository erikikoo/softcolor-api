class CreateSistemaDeImpressaos < ActiveRecord::Migration[5.2]
  def change
    create_table :sistema_de_impressaos do |t|
      t.string :painel_principal_title
      t.text :painel_principal_description
      t.string :painel_one_title
      t.text :painel_one_description
      t.string :painel_two_title
      t.text :painel_two_description
      t.string :painel_tree_title
      t.text :painel_tree_description

      t.timestamps
    end
  end
end
