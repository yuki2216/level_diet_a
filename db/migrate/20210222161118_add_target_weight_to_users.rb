class AddTargetWeightToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :target_weight, :float
  end
end
