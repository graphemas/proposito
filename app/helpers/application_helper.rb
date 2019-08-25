module ApplicationHelper
  def header_menu_left
    content_for(:header_menu_left)
  end

  def header_menu_right
    content_for(:header_menu_right)
  end

end
