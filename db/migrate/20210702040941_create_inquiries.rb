class CreateInquiries < ActiveRecord::Migration[6.1]
  def change
    create_table :inquiries do |t|
      t.string :name
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
