module ApplicationHelper
  def full_name(user)
    if user.first_name.present?
      "#{user.first_name.titleize} #{user.last_name.titleize}"
    else
      'Empty'
    end
  end
end
