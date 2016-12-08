class ProjectPhase < ApplicationRecord
  include RankedModel

  belongs_to :project
  ranks :phase_order,
  	:with_same => :project_id
end
