class CreateAdmissions < ActiveRecord::Migration[7.0]
  def change
    create_table :admissions do |t|

      t.timestamps
    end
  end
end
