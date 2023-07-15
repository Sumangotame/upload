class CreateParentDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :parent_details do |t|
      t.integer :User_detail_id,null:false,foreign_key:true
      t.string :first_name
      t.string :last_name
      t.string :Address
      t.bigint :phone_number
      t.string :email

      t.timestamps
    end
  end
end
