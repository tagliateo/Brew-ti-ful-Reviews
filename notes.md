Coffee Review App

User
- has_many :reviews
- name
- email
- password_digest
- profile pic

Review
- belongs_to :user
- has_many :comments
- title
- roast
- rating

Category
- has many users through reviews

Comment
- belongs_to :user
- belongs_to :review
- text
