class ChangeActiveToBooleanFromStudents < ActiveRecord::Migration
  def change
      change_column :students, :active, :boolean
  end
end
