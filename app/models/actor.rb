require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name 
    "#{self.first_name} #{self.last_name}"
  end 
  
  def list_roles 
    roles = [] 
    c = self.characters.map {|c| "#{c.name}"} 
    s = self.shows.map {|s| "#{s.name}"}
    roles << (c+s).join(" - ")
  end 
  
end