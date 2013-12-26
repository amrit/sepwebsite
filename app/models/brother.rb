class Brother < ActiveRecord::Base
  attr_accessible :name, :pledge_class, :avatar

   has_attached_file :avatar,
    :storage => :s3,
    :bucket => 'sep-website-avatars',
    :s3_credentials => {
      :access_key_id => 'AKIAJ4OZKNCGDIJ6ZEAQ',
      :secret_access_key => '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'
   }

end
