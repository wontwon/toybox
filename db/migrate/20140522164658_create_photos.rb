class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.binary :file

      t.timestamps
    end
  end
end
