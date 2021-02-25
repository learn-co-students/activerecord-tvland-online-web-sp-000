class Network < ActiveRecord::Base
  has_many :shows



  def sorry
    "We're sorry about passing on John Mulaney's pilot"
  end

      # def build_show(show_name)
    #     Show.new(show_name)
    # end
end
