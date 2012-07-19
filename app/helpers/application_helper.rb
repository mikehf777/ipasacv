module ApplicationHelper
  def titulo
    base_titulo="IPASA"
    if @titulo.nil?
      base_titulo
    else
      "#{base_titulo} | #{@titulo}"
    end
  end
  
  def logo
  logo = image_tag("logo.png",:alt => "Sample App", :class => "round")
  end
end
