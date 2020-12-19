class Author < ActiveRecord::Base
    validates :name, presence: true
    validates :name, uniqueness: true
    validates :phone_number, length: { is: 10}

    # validates_presence_of :name
    # validates_uniqueness_of :name
    # validates_length_of :phone_number, is:10
end