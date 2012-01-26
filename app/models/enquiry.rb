class Enquiry < ActiveRecord::Base
  validates :email, :presence => {:message => 'Please provide your email address so we can contact you to answer your enquiry.'}
  validates :content, :presence => {:message => 'Please enter your enquiry.'}
end
