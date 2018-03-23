class AddLogoToProject < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :logo, :string
  end
end
