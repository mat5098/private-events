class AddInvites < ActiveRecord::Migration[7.0]
  def change
    add_reference :invites, :event
    add_reference :invites, :invitee
  end
end
