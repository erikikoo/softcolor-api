class AddPrincipalToTelefones < ActiveRecord::Migration[5.2]
  def change
    add_column :telefones, :principal, :boolean, default: false
  end
end
