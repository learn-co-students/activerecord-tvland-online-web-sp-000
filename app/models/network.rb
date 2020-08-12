class Network < ActiveRecord::Base
  attr_accessor :call_letters
  has_many :shows

  def sorry
    "We're sorry about passing on John Mulaney's pilot"
  end
end
