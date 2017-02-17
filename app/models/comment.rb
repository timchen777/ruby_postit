class Comment < ActiveRecord::Base
   belongs_to :post
   belongs_to :post1
end
