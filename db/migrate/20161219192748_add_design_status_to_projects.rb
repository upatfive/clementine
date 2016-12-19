class AddDesignStatusToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :design_status, :string
  end
end
