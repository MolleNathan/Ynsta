module ApplicationHelper

  def heart(color)
      out= "<svg xmlns='http://www.w3.org/2000/svg' width='40' height='40' viewBox='0 0 8 8' fill='#{color}'>
        <path d='M2 0c-.55 0-1.04.23-1.41.59-.36.36-.59.85-.59 1.41 0 .55.23 1.04.59 1.41l3.41 3.41 3.41-3.41c.36-.36.59-.85.59-1.41 0-.55-.23-1.04-.59-1.41-.36-.36-.85-.59-1.41-.59-.55 0-1.04.23-1.41.59-.36.36-.59.85-.59 1.41 0-.55-.23-1.04-.59-1.41-.36-.36-.85-.59-1.41-.59z'
        transform='translate(0 1)'/>
      </svg>".html_safe
  end

  def display_tag(tag_params)
      out= "<p>"+tag_params.name+"</p>".html_safe
  end
end
