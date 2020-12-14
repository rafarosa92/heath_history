module ApplicationHelper
  include ActiveLinkToHelper
  include TemplateNavHelper

  def current_page(page)
    case page
    when 'sessions' then 'bg-gradient-primary'
    when 'registrations' then 'bg-gradient-primary'
    when 'passwords' then 'bg-gradient-primary'
    end
  end
end
