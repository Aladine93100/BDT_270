class Inquiry
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  include ActiveModel::Validations
  include ActionView::Helpers::TextHelper
  
  attr_accessor :nom, :prénom, :téléphone, :voie, :message
  
  validates :nom, 
            :presence => true
  
  validates :prénom,
            :presence => true

  validates :téléphone, 
            :presence => true
  
  validates :voie,
            :presence => true
  
  validates :message,
            :length => { :minimum => 10, :maximum => 1000 }
  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end
  
  def deliver
    return false unless valid?
    Pony.mail({
      :from => %("#{name}" <#{email}>),
      :reply_to => email,
      :subject => "Website inquiry",
      :body => message,
      :html_body => simple_format(message)
    })
  end
      
  def persisted?
    false
  end
end