class CreateUserDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :user_details,id:false do |t|
      t.string :Name
      t.integer :User_id,null:false,primary_key: true
      t.string :photo
      t.string :Address

      t.timestamps
    end
  end
end
