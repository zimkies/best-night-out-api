class ChangeResponseResponseToResult < ActiveRecord::Migration[5.0]
  def change
    rename_column :responses, :response, :result

  end
end
