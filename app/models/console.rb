class Console < ActiveRecord::Base
  
  def slug
    name.downcase.gsub(" ", "-")
  end
  
  def to_param
    slug
  end
  
end
