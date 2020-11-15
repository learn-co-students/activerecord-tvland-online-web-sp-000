class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        list = []
        characters.each do |c|
            actors.each do |a|
                list << "#{a.first_name} #{a.last_name}"
            end
        end
        list
    end
end