class Show < ActiveRecord::Base

belongs_to :network
    has_many :characters
    has_many :actors, through: :characters

    def actors_list
        # return an array of strings containing every actors's full name
        self.actors.collect do |t|
          t.full_name
        end
      end

  end
