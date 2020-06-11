require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    #binding.pry
    self.first_name + ' ' + self.last_name
  end

  def list_roles

#     characters.collect do |character|
#   "#{character.name} - #{character.show.name}"
# end

    array = []
    x = 0
    while x < characters.size
      array <<  "#{characters[x].name} - #{shows[x].name}"
      x += 1
    end
   array
  end

end
