class AddLogoToCompany < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :logo, :attachment
  end
end
