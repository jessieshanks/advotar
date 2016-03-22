module NavbarHelper


module NavigationHelper

  def squad_edit_link(html_options = {})
    link_to posts_archive_path, default_navigation_options(html_options)
  end

  def about_link(html_options = {})
    link_to posts_archive_path, default_navigation_options(html_options)
  end

  def works_link(html_options = {})
    link_to posts_archive_path, default_navigation_options(html_options)
  end

  private

  def default_navigation_options(html_options)
    html_options[:class] << 'item'
  end


end
