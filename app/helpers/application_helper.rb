module ApplicationHelper

  def page_title(pagetitle)
    title = "GVS | Global Virtual Studio"
    if pagetitle.empty?
      title
    else
      "#{title} | #{pagetitle}"
    end
  end

end
