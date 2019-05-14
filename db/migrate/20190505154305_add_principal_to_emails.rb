class AddPrincipalToEmails < ActiveRecord::Migration[5.2]
  def change
    add_column :emails, :principal, :boolean, default: false
  end
end
