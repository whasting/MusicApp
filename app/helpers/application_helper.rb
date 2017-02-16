module ApplicationHelper
  def auth_token
    html = "<input type='hidden' name='authenticity_token'"
    html += " value='<%= form_authenticity_token %>'>"

    html.html_safe
  end

  def logout_button
    html = "<form action='#{session_url}' method='post'>"
    html += "#{auth_token}"
    html += "<input type='hidden' name='_method' value='delete'>"
    html += "<input type='submit' name='logout' value='Logout'>"
    html +="</form>"

    html.html_safe
  end
end
