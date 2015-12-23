class Robot < ActiveRecord::Base
  belongs_to :inventor
  validates_presence_of :name
  def greet
    if self.friendly
      'hello'
    else
      'die human'
    end
  end
end
