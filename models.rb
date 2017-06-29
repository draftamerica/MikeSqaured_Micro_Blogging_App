class User < ActiveRecord::Base
    has_one :blog
    has_many :comments
end

class Post < ActiveRecord::Base
    belongs_to :blog
    has_many :comments
end

class Comment < ActiveRecord::Base
    belongs_to :user
    belongs_to :post
end

class Blog < ActiveRecord::Base
    belongs_to :user
    has_many :posts
end


# ======== users ========
# firstname, lastname, username, password, email, created_at, updated_at

# ======== posts =======
# blog_id, title, content, created_at, updated_at

# ======== comments =========
# user_id, post_id, comment, created_at

# ======== blog ========
# user_id, title, created_at, updated_at
