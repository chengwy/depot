module ApplicationHelper
<<<<<<< HEAD
  def hidden_div_if(condition,attributes = {},&block )
    if condition
      attributes["style"] = "display: none"
    end
    content_tag("div",attributes, &block)
=======
  def hidden_div_if(condition, attributes={}, &block)
    if condition
      attributes["style"] = "display: none"
    end
    content_tag("div", attributes, &block)
>>>>>>> c6290dc12a73ecc7a81fd35dfb55a42b829b4c10
  end
end
