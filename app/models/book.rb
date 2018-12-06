class Book < ActiveRecord::Base 
    belongs_to :user
    
    #mount_uploader :image, ImageUploader
    has_attached_file :image, 
    :styles => {large: "600x600", medium: "300x300", thumb: "150x150"}, 
    :url => "/tmp/"
    
    validates_attachment_content_type  :image, content_type: /\Aimage\/.*\Z/
    validates :title,  presence: true
    validates :isbn,  presence: true, :numericality => {:only_integer => true}
    validates :price, presence: true
    validates_presence_of :user
    
    def image_from_url(url)
        self.image = open(url)
    end
    
    def self.search(terms)
        if terms
            where("title LIKE ?", "%#{terms}%")
        else 
            all
        end
    end
end
