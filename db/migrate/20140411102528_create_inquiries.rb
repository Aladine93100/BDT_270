class CreateInquiries < ActiveRecord::Migration
  def change
    create_table :inquiries do |f|
      f.string :nom
      f.string :prénom
      f.string :téléphone
      f.string :voie
      f.string :message

      f.timestamps
    end
  end
end