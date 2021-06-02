class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :Name
      t.string :Email
      t.text :Content
    end
  end
end
