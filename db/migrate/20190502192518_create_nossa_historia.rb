class CreateNossaHistoria < ActiveRecord::Migration[5.2]
  def change
    create_table :nossa_historia do |t|
      t.string :painel_title
      t.text :painel_description

      t.timestamps
    end
  end
end
