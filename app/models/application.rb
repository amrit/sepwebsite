class Application < ActiveRecord::Base
  attr_accessible :name, :email, :phone_number, :year, :major, :picture, :resume, :extracurriculars, :hobbies, :why_sep, :short_answer1, :short_answer2, :short_answer3, :short_answer4, :reference, :availabilities
  serialize :availabilities
  #### AWS CREDENTIALS REDACTED FOR GITHUB

   validates :name, :email, :phone_number, :year, :major, :picture, :resume, :extracurriculars, :hobbies, :why_sep, :reference,  presence: true
end
