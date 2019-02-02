class Network < ActiveRecord::Base
  has_many :shows
  belongs_to :networks

  def sorry
    "We're sorry about passing on John Mulaney's pilot"
  end
end
