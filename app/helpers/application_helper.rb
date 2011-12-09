module ApplicationHelper

  def is_active?(controller_and_page)
    controller = controller_and_page.split("#")[0]
    page = controller_and_page.split("#")[1]
    "active" if params[:controller] == controller && params[:action] == page
  end

end
