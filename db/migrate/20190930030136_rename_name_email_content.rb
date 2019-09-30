class RenameNameEmailContent < ActiveRecord::Migration[5.2]
  def change
    rename_column :contacts, :Name, :name
    rename_column :contacts, :Email, :email
    rename_column :contacts, :Content, :content
  end
end
