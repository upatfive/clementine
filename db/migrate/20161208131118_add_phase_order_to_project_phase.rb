class AddPhaseOrderToProjectPhase < ActiveRecord::Migration[5.0]
  def change
    add_column :project_phases, :phase_order, :integer
  end
end
