class CreateInquiries < ActiveRecord::Migration
  def change
    create_table :inquiries do |f|
      t.string :nom
      t.string :prénom
      t.string :téléphone
      t.string :voie
      t.string :message

      t.timestamps
    end
  end
end