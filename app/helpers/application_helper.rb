module ApplicationHelper
  def full_name(user)
    "#{user.first_name.titleize} #{user.last_name.titleize}"
  end
end
