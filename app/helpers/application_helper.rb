module ApplicationHelper
  def full_title(page_title = '')
    base_title = "Ruby on Rails Tutorial Sample App"

    if page_title.empty?
      base_title
    else
      short_title = page_title.length > 15 ? page_title[0, 15] + '...' : page_title
      "#{short_title} | #{base_title}"
    end
  end
end