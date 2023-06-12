class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  def actors_list
    self.actors.map do |actor|
      actor.full_name
    end
  end

  has_many :shows

  def sorry
    "We're sorry about passing on John Mulaney's pilot"
  end
end