module ApplicationHelper
  def link_to_remove_fields(name, f)  
    f.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)")  
  end
end
