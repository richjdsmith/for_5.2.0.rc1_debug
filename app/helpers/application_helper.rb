module ApplicationHelper
  def flash_class(level)
    case level
        when 'notice' then "notification is-info"
        when 'success' then "notification is-success"
        when 'error' then "notification is-danger"
        when 'alert' then "notification is-warning"
    end
  end

  def has_many_locations?
    return true if current_user.business.more_than_one_location = true
  end
  
end