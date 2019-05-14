class CreateHomes < ActiveRecord::Migration[5.2]
  def change
    create_table :homes do |t|
      t.string :painel_one_title
      t.text :painel_one_description
      t.string :painel_two_title
      t.text :painel_two_description

      t.timestamps
    end
  end
end
