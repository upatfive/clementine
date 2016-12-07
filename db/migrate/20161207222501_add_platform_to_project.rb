class AddPlatformToProject < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :platform, :string
  end
end
