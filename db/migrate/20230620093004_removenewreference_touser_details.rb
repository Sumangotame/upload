class RemovenewreferenceTouserDetails < ActiveRecord::Migration[6.0]
  def change
    remove_column:user_details,:User_id
  end
end
