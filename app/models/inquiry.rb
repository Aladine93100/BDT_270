class Inquiry < Activerecord::Base
	validates :nom, presence: true
	validates :prénom, presence: true
	validates :téléphone, presence: true
	validates :voie, presence: true
	validates :message, presence: true
    has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
