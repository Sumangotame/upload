class AddnewreferenceTouserDetails < ActiveRecord::Migration[6.0]
  def change
    add_column:user_details,:User_id,:primary_key
  end
end
