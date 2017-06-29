class User < ActiveRecord::Base
    has_many :posts
    has_many :userfeeds
    has_many :feeds, through: :userfeed
    has_many :comments
end

class Post < ActiveRecord::Base
    belongs_to :user
    has_many :comments
    has_one :feed
end

class Comment < ActiveRecord::Base
    belongs_to :user
    belongs_to :post
    has_one :feed
end

class Feed < ActiveRecord::Base
    has_many :userfeeds
    has_many :users, through: :userfeed
    has_one :post
    has_one :comment
end

class Userfeed < ActiveRecord::Base
    belongs_to :user
    belongs_to :feeds
end


# ======== users ========
# firstname, lastname, username, password, email, created_at, updated_at

# ======== posts =======
# blog_id, title, content, created_at, updated_at

# ======== comments =========
# user_id, post_id, comment, created_at

# ======== feed ========
# post_id, comment_id, created_at,

# ======== userfeed ========
# user_id, feed_id, created_at
