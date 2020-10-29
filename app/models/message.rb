class Message < ApplicationRecord
    belongs_to :room
    belongs_to :user
end
    def change
        create_table :messages do |t|
            t.string :content
            t.references :room, foreign_key: true
            t.references :user, foreign_key: true
            t.timestamps
        end
    end
end
