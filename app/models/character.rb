class Character < ActiveRecord::Base
    belongs_to :actor
    belongs_to :show
    has_many :networks, through: :shows

end
