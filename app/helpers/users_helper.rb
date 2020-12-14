module UsersHelper
  def kinds_for_select
    User.kinds.map { |kind| [User.human_enum_name(:kinds, (kind[0]).to_s), kind[0]] }
  end
end
