class AddToAdmissions < ActiveRecord::Migration[7.0]
  def change
    add_reference :admissions, :attendee
    add_reference :admissions, :event_attended
  end
end
