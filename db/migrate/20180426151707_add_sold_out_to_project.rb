class AddSoldOutToProject < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :sold_out, :boolean, default: false
  end
end
