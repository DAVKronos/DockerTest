module IconHelper
  def kIcon(symbol, options = {})
    return "" if symbol.nil?

    icon = Octicons::Octicon.new(symbol, options)
    options[:class] = "kronos-icon"
    return content_tag(:svg, icon.path.gsub("/>", '></path>').html_safe, icon.options)
  end
end
