class Post < ActiveRecord::Base
    validates_presence_of :title
    validates_length_of :content, minimum: 100
    validates_length_of :summary, maximum: 100
    validates :category, inclusion: {in:["Fiction", "Non-Fiction"]}

    validate :clickbait

    # def clickbait
    #     if self.title
    #       if !["Won't Believe", "Secret", "Top 3", "Guess"].any? {|str| self.title.include? str}
    #       errors.add(:title, "Title is not clickbait!")
    #       end
    #     end
    #   end


    def clickbait
        if self.title
            if self.title[/Won't Believe|Secret|Top|Guess/] == nil
                errors.add(:clickbait, "post is not clickabit")
            end
        end
    end
end
