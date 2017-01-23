class DropCompaniestable < ActiveRecord::Migration[5.0]
  def up
      drop_table :companies
    end

    def down
      raise ActiveRecord::IrreversibleMigration
    end
end
