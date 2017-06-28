class User < ActiveRecord::Base
    has_one :blog
    has_many :comments
    has_many :posts, through: :blog
end

class Post < ActiveRecord::Base
    has_one :blog
    has_many :comments
end

class Comment < ActiveRecord::Base
    has_one :user
    has_one :post
end

class Blog < ActiveRecord::Base
    belongs_to :user
end
