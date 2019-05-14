class CreateQuemSomos < ActiveRecord::Migration[5.2]
  def change
    create_table :quem_somos do |t|
      t.string :painel_title
      t.text :painel_description

      t.timestamps
    end
  end
end
