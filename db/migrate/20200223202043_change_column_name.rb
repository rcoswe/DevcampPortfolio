class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :skills, :percent_utlized, :percent_utilized
  end
end
