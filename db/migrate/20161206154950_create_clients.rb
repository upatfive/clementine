class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :main_contact
      t.string :main_email
      t.string :industry

      t.timestamps
    end
  end
end
