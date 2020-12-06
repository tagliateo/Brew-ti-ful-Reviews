User.destroy_all
Coffee.destroy_all
Review.destroy_all

users1 = User.create(name: "Kona", email: "kona@kona.com", password: "guest", profile_img: "https://pixfeeds.com/images/cats/1280-172696317-calico-cat.jpg")
kofee = Coffee.create(title: "Breakfast Blend", brand: "Seattles Best", description: "tastes like seattle and eggs", roast_level: "Medium", caffeine_content: "High", user_id: users1.id)
kofee_review = Review.create(title: "Seattles Best: Breakfast Blend", rating: 4, coffee_id: kofee.id, user_id: users1.id)

person2 = User.create(name: "Craig", email: "craig@craig.com", password: "guest", profile_img: "https://vetnutrition.tufts.edu/wp-content/uploads/cat-2603300_1920.jpg")
coffee2 = Coffee.create(title: "100% Columbian", brand: "Kirklands", description: "roasty and nutty", roast_level: "Medium", caffeine_content: "Medium", user_id: person2.id)
kofee_review = Review.create(title: "The Worlds Most Okayest Coffee", description: "it's really just okay", rating: 3, coffee_id: coffee2.id, user_id: person2.id)
