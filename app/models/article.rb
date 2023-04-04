class Article < ApplicationRecord

    #model and validate the conditions for each article in the table
    validates :title, presence:true, length: {minimum: 6, maximum: 20}
    validates :description, presence:true, length: {minimum: 30, maximum: 100}
end
