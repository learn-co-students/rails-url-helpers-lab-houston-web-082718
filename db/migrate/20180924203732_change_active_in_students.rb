class ChangeActiveInStudents < ActiveRecord::Migration
  def change
    change_column :students, :active, :string, :default => "inactive"
  end
end
