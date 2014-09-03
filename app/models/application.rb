class Application < ActiveRecord::Base
  attr_accessible :name, :email, :phone_number, :year, :major, :picture, :resume, :extracurriculars, :hobbies, :why_sep, :short_answer1, :short_answer2, :short_answer3, :short_answer4, :reference, :availabilities
  serialize :availabilities
  has_attached_file :picture,
    :storage => :s3,
    :bucket => 'eta-application-pictures',
    :s3_credentials => {
      :access_key_id => 'AKIAJ4OZKNCGDIJ6ZEAQ',
      :secret_access_key => '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'
   }

  has_attached_file :resume,
  	:storage => :s3,
    :bucket => 'eta-application-resumes',
    :s3_credentials => {
      :access_key_id => 'AKIAJ4OZKNCGDIJ6ZEAQ',
      :secret_access_key => '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'
   }


   validates :name, :email, :phone_number, :year, :major, :picture, :resume, :extracurriculars, :hobbies, :why_sep, :reference,  presence: true
end
