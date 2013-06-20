module ApplicationHelper

  #--------------------------------------------------------
  # Paragraph
  #--------------------------------------------------------
  def paragraph(text)
    "#{sanitize(simple_format(text), :tags => %w(p i br b strong em))}".html_safe
  end

  def paragraph_truncate(text, length)
    "#{sanitize(simple_format(truncate(text, :length => length)), :tags => %w(p i br b strong em))}".html_safe
  end
end
