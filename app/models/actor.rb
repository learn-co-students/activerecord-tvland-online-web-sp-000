class Actor < ActiveRecord::Base
    has_many :characters
    has_many :show, through: :characters

    
    # it "can list its full name" do
    #     emilia = Actor.new(:first_name => "Emilia", :last_name => "Clarke")
    #     emilia.save
    
    #     emilia.reload
    #     expect(emilia.full_name).to eq("Emilia Clarke")
    #  end
    
    def full_name 
        name = "#{self.first_name} #{self.last_name}"
    end 

    def list_roles

    end

end