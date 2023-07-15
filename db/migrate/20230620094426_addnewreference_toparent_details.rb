class AddnewreferenceToparentDetails < ActiveRecord::Migration[6.0]
  def change
    add_reference :parent_details, :user_details, foreign_key: { to_table: :user_details, primary_key: :User_id }

          end
end
