class Party < ApplicationRecord
    validates :budget, presence: true
    validates :name, uniqueness: { scope: :date,
        message: "has already been selected for this day"
    }
    validates :date, future: true


    def private?
        'Public'
    end    

end
