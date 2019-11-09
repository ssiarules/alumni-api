class RenameAlumnisToAlumnus < ActiveRecord::Migration[5.2]
  def self.up 
    rename_table :alumnis, :alumnus
  end

   def self.down
    rename_table :alumnus, :alumnis
  end
end
