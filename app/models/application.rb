class Application < ActiveRecord::Base
  attr_accessible :name, :email, :phone_number, :year, :major, :picture
  has_attached_file :picture,
    :storage => :s3,
    :bucket => 'zeta-application-pictures',
    :s3_credentials => {
      :access_key_id => 'AKIAJ4OZKNCGDIJ6ZEAQ',
      :secret_access_key => '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'
   }
end
