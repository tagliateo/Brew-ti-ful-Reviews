Coffee Review App

User
- has_many :reviews
- has_many :coffees, through: reviews
- name
- email
- password_digest
- profile pic

Review
- belongs_to :user
- belongs_to :coffee
- title
- rating
- description


Coffee
- has_many :reviews
- has_many :users, through: :reviews
<!-- - belongs_to :category -->
- belongs_to :user
- title
- roaster
- description
- roast_type


***Stretch Goals
Category
- has many users through reviews
- name

<!--
Comment
- belongs_to :user
- belongs_to :coffee
- text -->
