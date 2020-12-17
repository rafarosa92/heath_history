module UsersHelper
  def user_kinds_for_select
    User.kinds.map { |kind| [User.human_enum_name(:kinds, (kind[0]).to_s), kind[0]] }
  end

  def user_patient_for_select(user)
    if user.patient?
      User.where(id: user.id).pluck(:id, :name).map { |id, name| [name, id] }
    else
      User.where(kind: :patient).pluck(:id, :name).map { |id, name| [name, id] }

    end
  end
end
