class AddMoreFieldsToApplication < ActiveRecord::Migration
  def change
  	# Extracurricular Info + Why Sep?
  	add_column :applications, :extracurriculars, :text
  	add_column :applications, :hobbies, :text
  	add_column :applications, :why_sep, :text

  	# Short Answer
  	add_column :applications, :short_answer1, :text
  	add_column :applications, :short_answer2, :text

  	# Additional Information
  	add_column :applications, :picture, :attachment
  	add_column :applications, :reference, :string

  end
end
