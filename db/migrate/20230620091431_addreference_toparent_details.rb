class AddreferenceToparentDetails < ActiveRecord::Migration[6.0]
  def change
    add_reference :parent_details, :user_details, foreign_key: true
  end
end
