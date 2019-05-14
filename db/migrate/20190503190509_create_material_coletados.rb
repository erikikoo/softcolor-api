class CreateMaterialColetados < ActiveRecord::Migration[5.2]
  def change
    create_table :material_coletados do |t|
      t.string :ano
      t.string :qnt_plastico
      t.string :qnt_aparas
      t.string :qnt_fotolitos
      t.string :qnt_ferro
      t.string :qnt_papelao
      t.string :qnt_aluminio

      t.timestamps
    end
  end
end
