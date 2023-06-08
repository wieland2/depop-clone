file = URI.open("https://media-photos.depop.com/b0/18945021/1208490191_a72603faa8c14ba3a6b1e1a1b79962ab/U1.jpg")
user = User.new(email: "wagner@gmail.com", password: "123456", username: "denimexpress", first_name: "Denim", last_name: "Express", location: "London, United Kingdom")
user.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user.save

file = URI.open("https://media-photos.depop.com/b0/5658377/628986333_f5771e68478c4955ae85e12127c77d02/U1.jpg")
user = User.new(email: "sarah@gmail.com", password: "123456", username: "insanecollective", first_name: "Insane", last_name: "Collective", location: "London, United Kingdom")
user.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user.save

file = URI.open("https://media-photos.depop.com/b0/26355307/1320427584_6aa4c8386a4b4b1796e1fe2c10d2f81f/U1.jpg")
user = User.new(email: "ana@gmail.com", password: "123456", username: "mistymountainvintage", first_name: "Misty", last_name: "Mountain Village", location: "London, United Kingdom")
user.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user.save

file = URI.open("https://media-photos.depop.com/b1/26338550/1481396575_804cda84fab74a42894c52b70a4be6c2/U1.jpg")
user = User.new(email: "allsneakers@gmail.com", password: "123456", username: "allsneakers", first_name: "All", last_name: "Sneakers", location: "London, United Kingdom")
user.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user.save




def product(http, title, price, category, condition, gender, size, description, country, city, user_id)
  file = URI.open("#{http}")
  product = Product.new(title: "#{title}", price: "#{price}",
  category: "#{category}", condition: "#{condition}", gender: "#{gender}", size: "#{size}", description: "#{description}", country: "#{country}", city: "#{city}", user_id: "#{user_id}")
  product.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  product.save
end


 product("https://media-photos.depop.com/b1/9575668/1490529924_43dc991ecb2647dab9e181bdeca7f138/P0.jpg",
 "Levi's Men's Blue and White Jeans", 54.99,
 "Jeans", "Like New", "Male", "36W 32L",
 "🔎 DESCRIPTION:
 Vintage Levi's Reworked Jeans
 90's Piece. Upcycled Denim Jeans. Restyled Jeans.
 Embrodered Badge Rework. Baggy Jeans. Light Blue & White Colour. Classic Levi's Badge.", "United Kingdom", "London", 1)

 product("https://media-photos.depop.com/b1/18945021/1470351602_2266937d73704586b1855f44009ca9ce/P0.jpg",
 "Levi's Men's Blue Jeans", 73.60,
 "Jeans", "Like New", "Male", "34W 30L",
 "Vintage Levi's 550 jeans in a relaxed fit.
 Reworked by Denim Faygo with handmade distress & flared ankles. Multicolour paint dots. Premium quality.", "United Kingdom", "London", 1)

 product("https://media-photos.depop.com/b1/9575668/1477615891_2664c2d8e295415084d7682d872cd61f/P0.jpg",
 "Tommy Hilfiger Men's Blue and White Jeans", 34.99,
 "Jeans", "Used-Good", "Male", "32W",
 "🔎 DESCRIPTION:
 Blue & White Denim Jeans. Bootleg Cut. Classic Tommy Hilfiger Design. Embroidered Tommy Logo.", "United Kingdom", "London", 1)

 product("https://media-photos.depop.com/b1/5658377/1438044234_38fda078af444938ac02b42364ea82a7/P0.jpg",
 "Men's Yellow and Green Shirt", 35.10,
 "T-Shirts", "Used-Excellent", "Male", "M",
 "Psychedelic eel tshirt
 80s Slim fit tee in yellow, hand dyed by us with
 pinks to male funky blends. From Duval Street Adventure in Key West, FL.", "USA", "Miami", 2 )

 product("https://media-photos.depop.com/b1/5658377/1446463220_04c259cd44074b62b18075ba11d7ac47/P0.jpg",
 "Ralph Lauren Men's Multi Shirt", 70.20,
 "Tops","Used-Excellent", "Male", "M",
 "Psychedelic seersucker shirt
 Vintage Ralph Lauren button up shirt in red and white seersucker
 and double dyed by us. Great warm color
 palette and perfect for summer. Calamine red, pink, orange, and yellow.", "USA", "Miami", 2)

 product("https://media-photos.depop.com/b1/5658377/1446845273_4cdcda25decd4c25a882b0b9293bad79/P0.jpg",
 "Wrangler Women's Multi Shorts", 30.0,
 "Bottoms", "Used-Excellent","Female", "29W",
 "Psychedelic patchwork jorts
 90s Hand dyed, hand stenciled, and patched jeans by us. Vintage fabrics
 from the 80s-90s and some hand dyed denim. Embroidered
 patches from the 80s. Stencil done with artist quality
 textile paints. Ooak. Boys shorts, designed for small ladies.", "USA", "Miami", 2
 )

 product("https://media-photos.depop.com/b1/5658377/1438109346_dd831ea00b804b0fad280d48d8529208/P0.jpg",
 "Women's Multi Blouse", 18.0,
 "Tops", "Used-Good","Female", "Medium",
 "Psychedelic palm blouse
 70s vintage v neck collared blouse with princess seams.
  Ties in the back for fit. A rainbow of trees on a bright blue
 background. Same brand that did vintage Lily Pulitzer prints.", "USA", "Miami", 2
 )

 product("https://media-photos.depop.com/b1/5658377/1446466274_44a6315a5f3149db8f9bbdb9d191571c/P0.jpg",
 "Women's Multi T-shirt", 10.0,
 "T-shirts", "Used-Excellent","Female", "Small",
 "Colorful upcycled tee
 1996 Taste of Chicago tee with a one of a kind hand dye by us. Bold, colorful look.", "USA", "Miami", 2)

 product("https://media-photos.depop.com/b0/5658377/1155446510_c9846f36d6af41029156c36871f15ae0/P0.jpg",
 "Levi's Men's Multi Jeans", 153.99,
 "Jeans", "Brand New","Male", "32W 30L",
 "70s Hippie flare jeans
 Patched by Insane Collective
 One of a kind
 Filled with vintage fabrics
 And embroidered patches
 Gutterman thread
 Machine wash cold, inside out
 Nothing new but the thread!", "USA", "Miami", 2
 )

 product("https://media-photos.depop.com/b1/5658377/1438120978_a6edaada08a140ab9976f107ead35815/P0.jpg",
 "Men's Multi Shirt", 46.20,
 "Tops", "Like New","Male", "M",
 "90s Surf tshirt
 Psychedelic Mon Tiki deadstock shirt. Has an Easter Island 🗿
 dude with sunglasses and a surfboard. Shirt was treated with resist before
 tie dyeing, then screenprinted. Very DMT meets surfwear.", "USA", "Miami", 2
 )

 product("https://media-photos.depop.com/b0/26355307/1244012579_1f3fd05d39014c67b799300c3d1cc3fd/P0.jpg",
 "Women's Multi Jeans", 170.0,
 "Jeans", "Like New", "Female", "S",
 "70s psychedelic bell bottoms
 📀 custom hand painted 📀
 70s inspired high waisted bell bottom flare jeans with swirly purple rainbow Jimi Hendrix painting", "USA", "Miami", 3
 )

 product("https://media-photos.depop.com/b1/26355307/1495659137_85fec67b45ac4146b0cd6d02abb3d143/P0.jpg",
 "Women's White and Black Blouse", 84.29,
 "Tops", "Like New", "Female", "S",
 "Vintage 90s y2k psychedelic trippy op art silk button up festival rave shirt", "USA", "Miami", 3
 )

 product("https://media-photos.depop.com/b1/26355307/1495663955_748773a328f94a04b0d9b67386875321/P0.jpg",
 "Women's Brown Jacket", 120.0,
 "Jackets", "Like New","Female","S",
 "Vintage 60s 70s boho suede leather jacket with dagger collar and cropped slim fit", "USA", "Miami", 3
 )

 product("https://media-photos.depop.com/b1/26355307/1495253663_3da841037aaa4e6896f6e42dd175c52c/P0.jpg",
 "Women's Silver Boots", 165.0,
 "Footwear","Brand New", "Female", "UK 5",
 "Vintage 60s gogo boots
 Silver futuristic chrome faux leather reflective mod gogo boots", "USA", "Miami", 3
 )

 product("https://media-photos.depop.com/b1/26338550/1485915166_64d0c6f4713243e383c227231502868c/P0.jpg",
 "Adidas Men's Green Trainers", 100.0,
 "Footwear", "Brand New", "Male", "UK 9",
 "ADIDAS CAMPUS 00s DARK GREEN", "United Kingdom", "London", 4)

 product("https://media-photos.depop.com/b1/26338550/1480898016_9db64fd4e9cc4a10b5ceaedd3b553c21/P0.jpg",
 "Adidas Men's Black and White Trainers", 87.0,
 "Footwear", "Brand New","Male", "UK 9",
 "ADIDAS CAMPUS 00s BLACK", "United Kingdom", "London", 4)

 product("https://media-photos.depop.com/b1/26338550/1479373187_c4137efe6bda45618005bbc50a35bc6c/P0.jpg",
 "New Balance Women's White Trainers", 72.0,
 "Footwear", "Like New","Female", "UK 5",
 "New Balance 550 White Size 5
 In perfect condition. Worn a few times.", "United Kingdom", "London", 4
 )
