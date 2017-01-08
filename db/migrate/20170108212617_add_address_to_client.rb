class AddAddressToClient < ActiveRecord::Migration[5.0]
  def change
    add_column :clients, :address1, :string
    add_column :clients, :address2, :string
    add_column :clients, :city, :string
    add_column :clients, :province, :string
    add_column :clients, :postal_code, :string
    add_column :clients, :country, :string
  end
end
