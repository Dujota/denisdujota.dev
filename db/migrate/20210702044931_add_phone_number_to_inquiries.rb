class AddPhoneNumberToInquiries < ActiveRecord::Migration[6.1]
  def change
    add_column :inquiries, :phone_number, :string, null: true
  end
end
