User.destroy_all
Coffee.destroy_all
Review.destroy_all

users1 = User.create(name: "Kona", email: "kona@kona.com", password: "guest", profile_img: "https://pixfeeds.com/images/cats/1280-172696317-calico-cat.jpg")
kofee = Coffee.create(title: "Breakfast Blend", brand: "Seattles Best", description: "tastes like seattle and eggs", roast_level: "Medium", caffeine_content: "High", user_id: users1.id)
kofee_review = Review.create(title: "Seattles Best: Breakfast Blend", rating: 4, coffee_id: kofee.id, user_id: users1.id)
