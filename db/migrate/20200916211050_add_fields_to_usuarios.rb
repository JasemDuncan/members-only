class AddFieldsToUsuarios < ActiveRecord::Migration[6.0]
  def change
    def change
      add_column:usuarios, :name, :string
      add_column:usuarios, :username, :string
      add_index:usuarios, :username, unique: true
  end
  end
end
