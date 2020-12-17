module TreatmentsHelper
  def treatment_kinds_for_select
    Treatment.kinds.map { |kind| [Treatment.human_enum_name(:kinds, (kind[0]).to_s), kind[0]] }
  end
end
