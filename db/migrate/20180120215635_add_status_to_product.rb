class AddStatusToProduct < ActiveRecord::Migration[5.1]
    def change
        add_column :products, :status, :string, default: :pending
    end
end
