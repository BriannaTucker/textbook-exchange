class Book < ActiveRecord::Base 
    #belongs_to :guser

    validates :title,  presence: true
    validates :isbn,  presence: true
    #validates_presence_of :guser
    
    def self.search(terms)
        if terms
            where("title LIKE ?", "%#{terms}%")
        else 
            all
        end
    end
end
