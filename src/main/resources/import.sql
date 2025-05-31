INSERT INTO ingredients(name) VALUES ('Water');
INSERT INTO ingredients(name) VALUES ('Medium chicken egg');
INSERT INTO ingredients(name) VALUES ('Sugar');
INSERT INTO ingredients(name) VALUES ('Black pepper');
INSERT INTO ingredients(name) VALUES ('Salt');
INSERT INTO ingredients(name) VALUES ('Honey');
INSERT INTO ingredients(name) VALUES ('Cow milk');
INSERT INTO ingredients(name) VALUES ('Fermented cheese');
INSERT INTO ingredients(name) VALUES ('Carrot');
INSERT INTO ingredients(name) VALUES ('Ketchup');
INSERT INTO ingredients(name) VALUES ('Apples');
INSERT INTO ingredients(name) VALUES ('Pears');
INSERT INTO ingredients(name) VALUES ('Milk chocolate');
INSERT INTO ingredients(name) VALUES ('Lard');
INSERT INTO ingredients(name) VALUES ('Olive oil');
INSERT INTO ingredients(name) VALUES ('Sunflower oil');
INSERT INTO ingredients(name) VALUES ('Margarine');
INSERT INTO ingredients(name) VALUES ('Potatoes');
INSERT INTO ingredients(name) VALUES ('Beetroot');
INSERT INTO ingredients(name) VALUES ('Cabbage');
INSERT INTO ingredients(name) VALUES ('Cinnamon');
INSERT INTO ingredients(name) VALUES ('Vanilla');
INSERT INTO ingredients(name) VALUES ('Cabbage');
INSERT INTO ingredients(name) VALUES ('Green onions');
INSERT INTO ingredients(name) VALUES ('Raisins');
INSERT INTO ingredients(name) VALUES ('Cottage cheese');
INSERT INTO ingredients(name) VALUES ('Garlic');
INSERT INTO ingredients(name) VALUES ('Greek yogurt');
INSERT INTO ingredients(name) VALUES ('Baking powder');
INSERT INTO ingredients(name) VALUES ('Butter');
INSERT INTO ingredients(name) VALUES ('Cooking soda');
INSERT INTO ingredients(name) VALUES ('Dried cranberries');
INSERT INTO ingredients(name) VALUES ('Oat flour');
INSERT INTO ingredients(name) VALUES ('Wheat flour');
INSERT INTO ingredients(name) VALUES ('Potato seasoning');
INSERT INTO ingredients(name) VALUES ('Dill');
INSERT INTO ingredients(name) VALUES ('Banana');
-- Users
INSERT INTO users (username, password, role, name, last_name) VALUES ('b', 'b', 'user', 'Kristijonas', 'Kubilius');

INSERT INTO users (username, password, role, name, last_name) VALUES ('a', 'a', 'admin', 'Jonas', 'Tumas');

-- Recipes
INSERT INTO recepi (user_id, cooking_instructions, description, name, img_url) VALUES (1, 'Wait till water starts boiling, then add eggs and cook for 10 minutes', 'Very simple dish', 'Boiled eggs','https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.CjLLa0ZSrLVqnzlp06kPCQHaHa%26pid%3DApi&f=1&ipt=b8b645388dce52b1e0da3736e8641093583a74ada7614c3ee2b777e15932f855&ipo=images');

INSERT INTO recepi (user_id, cooking_instructions, description, name, img_url) VALUES (1, 'Blend the cottage cheese, yogurt, and chopped garlic with an electric blender until it reaches a smooth, creamy consistency with no cottage cheese or garlic bits. I usually adjust the thickness with the amount of yogurt — for a thicker sauce, use less yogurt; for a thinner one, add more. The sauce also thickens slightly after being refrigerated. Season with salt to taste, and either serve immediately or store in the fridge if preparing in advance. It keeps well in a sealed container in the refrigerator for several days. By the way, this sauce turns out great with any cottage cheese and Greek yogurt, but I find it best when made with wetter cottage cheese (sold in square packages) and milder Greek yogurt brands .', 'This garlic sauce is excellent. We use it on homemade pizza, it goes great with fries, potato pancakes, wraps (like homemade kebabs), or just as a dip for vegetables. People usually don’t believe this creamy treat is not only tasty but also healthy. If you want it richer, you can replace some of the yogurt with sour cream, but I find it flavorful enough without the extra fat.', 'Garlic Sauce', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.CjLLa0ZSrLVqnzlp06kPCQHaHa%26pid%3DApi&f=1&ipt=b8b645388dce52b1e0da3736e8641093583a74ada7614c3ee2b777e15932f855&ipo=images');
INSERT INTO recepi (user_id, cooking_instructions, description, name, img_url) VALUES (1, ' 1. Add flour, baking powder, sugar to a bowl. 2. Melt butter over a double boiler and pour into a bowl with dry ingredients. 3. Add eggs and mix everything together. 4. The dough comes together quickly, even without using your hands. 5. Chop chocolate and knead into dough. 6. Place the prepared dough in the refrigerator for about 15 minutes. 7. Shape cookies (as desired), bake in an oven preheated to 170° for about 15 minutes.', 'Soft, crumbly homemade cookies with chocolate. If desired, you can add nut butter to the dough, but then you need to add a little less flour. Rye', 'Homemade cookies with chocolate chips','https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.qTNJJrEy39NWeUeaCKvdXgHaLH%26pid%3DApi&f=1&ipt=d6c8ac8d7c1e2b21932a7839f64dc18971963f7b3437986ce767f6125df0fd3e&ipo=images');
INSERT INTO recepi (user_id, cooking_instructions, description, name, img_url) VALUES (1, '1. In a bowl, cream the soft butter with vanilla sugar, salt, and sugar. 2. Pour hot water into the butter and sugar mixture and mix. Chop the cranberries and add them to the mixture together with the oat flour. 3. Mix the flour with baking soda, add to the dough, mix well, and knead into an elastic dough. 4. Roll out the dough into a sheet about 1 cm thick and press out the cookies. 5. Bake in an oven preheated to 180 C for about 12 minutes, until the surface begins to turn yellow. Cool on a wire rack.', 'Delicious and soft oatmeal cookies', 'Soft oatmeal cookies with dried cranberries','https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.modernhoney.com%2Fwp-content%2Fuploads%2F2020%2F01%2FCranberry-Oatmeal-Cookies-10-scaled.jpg&f=1&nofb=1&ipt=bfb37791b6474a41e36b02240c7bc7395ff91e4d294b499ffa7f36d0b5bd3650');
INSERT INTO recepi (user_id, cooking_instructions, description, name, img_url) VALUES (1, 'Boil the potatoes mixed with the spice mixture until tender. Then drain and cut in half. Top with butter and dill. Serve while still warm. Tip! You can eat the potatoes with their skins until New Years, but we recommend using them peeled later.', 'Very simple dish', 'Boiled potatos','https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.completelydelicious.com%2Fwp-content%2Fuploads%2F2020%2F10%2Fbuttery-boiled-potatoes-6.jpg&f=1&nofb=1&ipt=532a5e490462730fcfe510ae1a79dcf9ac73e519d8b3e6ea4c4d6925d4895599');
INSERT INTO recepi (user_id, cooking_instructions, description, name, img_url) VALUES (1, '1. I beat the eggs with milk and oil. I add the flour, mix so that there are no lumps. I leave the dough to stand for 30 minutes. 2. I mix the dough again after it has stood. I fry the pancakes in a non-stick frying pan heated to medium heat, without adding any additional oil. I pour a ladle of batter into the pan, turn the pan so that the batter is distributed and leave to fry. When the surface dries, I carefully turn the pancake over and fry for another minute. 3. I cut the bananas in half lengthwise. I place half of the banana on one edge of the pancake and roll it up. I form all the pancakes this way. If you want the pancakes to be crispier, you can fry them while they are rolled up.', 'Very tasty, soft pancakes with banana filling. Served sprinkled with cinnamon, with jam, powdered sugar or just plain. You will bake about 10 pancakes from the amount you have prepared. Delicious!', 'Very tasty pancake with bananas','https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Faugalinismaistas.lt%2Fpav%2Flietiniai-su-bananais.jpg&f=1&nofb=1&ipt=9bf5d6d1b11a1698711b666921520d13b9f7ec2f6d57b169305b1fc1ec0b304b');
INSERT INTO recepi (user_id, cooking_instructions, description, name, img_url) VALUES (1, '1. Beat the eggs in a bowl, add sugar, a pinch of salt and beat well. 2. Add the flour and mix well with a spoon. Add the milk in several batches, mixing well each time. You should get a runny dough. Leave it to stand for 10-15 minutes so that the flour swells. 3. Heat a little oil or butter in a frying pan. Add about a tablespoon of dough per pancake. Fry over medium heat. When the top of the pancakes changes color and bubbles appear, turn them over and fry a little more. 4. Serve immediately, on warmed plates or keep in a warm oven so that they do not cool down. 5. These pancakes are suitable for eating with jam, sour cream, yogurt or whatever you like.', 'Very delicious flour pancakes. My grandmother used to bake these.', 'Delicious flour pancakes','https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.RkQypjTKI4tFBGN4vUh46AHaHa%26cb%3Diwp2%26pid%3DApi&f=1&ipt=58b3bfb1ff9ba02a9463eb5d5c1b14a0cae1898d814173806fd687fb313d225a&ipo=images');
INSERT INTO recepi (user_id, cooking_instructions, description, name, img_url) VALUES (2, 'Peel and finely grate the potatoes. Beat in the egg, season with salt and pepper, and mix. Heat the milk until almost boiling and pour it over the potato mixture, mixing. Fry the pancakes in hot oil in a frying pan, browning them nicely on both sides.', 'Very simple dish', 'Fluffy potato pancakes','https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcdn.momsdish.com%2Fwp-content%2Fuploads%2F2019%2F08%2FPotato-Pancakes-Recipe-03-scaled.jpg&f=1&nofb=1&ipt=5cafa8636f85c01f731243a0ee892df1161306370fdef09e13dd49e4507349ce');
INSERT INTO recepi (user_id, cooking_instructions, description, name, img_url) VALUES (2, '1. Mix the flour and salt in a bowl. Make a well in the middle of the flour, break in the eggs, pour in the oil and gradually, while stirring, pour in the milk and water. Beat everything very well with a whisk until smooth, so that there are no lumps. Leave the dough to stand at room temperature for 20-30 minutes to allow the flour to swell, because swollen dough makes the dough rolls much thinner, firmer, and less likely to crack. 2. The dough will thicken slightly after it has risen. Since different types of flour swell differently, you may need to thin the dough with a little milk or water before baking so that it spreads evenly in the pan. 3. Heat a clean, dry frying pan very well and lightly grease it with fat - a piece of unsalted drippings or a little oil. You can remove excess fat by quickly wiping it with a paper towel. 4. Pour a ladle of batter into the pan, lift the pan and rotate it so that the batter is evenly distributed over the entire surface of the pan. Then return the pan to the heat, cook the pancake for 1-2 minutes. or until the edges of the pancake easily come away from the edges. Then turn the pancake over and cook for about 1 more minute. 5. By the way, if you notice that the pancakes are starting to stick to the pan, grease it again with a little fat. If the pan is worse, you may have to do this step after each pancake, and if it is better - a little less often.', 'This recipe always makes my pancakes thin, firm, and delicious! Just dont skip the dough rising step, as its one of the most important steps to making great pancakes.', 'The most delicious pancakes','https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.CjLLa0ZSrLVqnzlp06kPCQHaHa%26pid%3DApi&f=1&ipt=b8b645388dce52b1e0da3736e8641093583a74ada7614c3ee2b777e15932f855&ipo=images');
INSERT INTO recepi (user_id, cooking_instructions, description, name, img_url) VALUES (2, 'Peel the potatoes, grate them, add flour, salt, baking soda and mix. Immediately fry the pancakes all over the pan. It is delicious to eat with butter or sour cream.', 'Very simple dish', 'Belarusian potato pancakes','https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.H7I-2xUVDJoWKol_XH1ljAHaE8%26pid%3DApi&f=1&ipt=186da37e5085a090e9ca06f111cd8dcb7d7b2f4ef5e7abd567f09faade74fd42&ipo=images');



-- Recipe Ingredients
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (1, 1, '500 ml');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (2, 1, '5 eggs');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (26, 2, '100 g');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (27, 2, '2 cloves');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (28, 2, '100 g');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (5, 2, 'by taste');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (13, 3, '100 g');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (29, 3, 'tea spoon');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (3, 3, '200 g');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (1, 3, '3 eggs');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (30, 3, '180 g');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (34, 4, '200 g');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (33, 4, '100 g');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (1, 4, '80 ml');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (30, 4, '80 g');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (32, 4, '30 g');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (31, 4, '1 tea spoon');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (22, 4, '1 tea spoon');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (21, 4, '0,5 tea spoon');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (5, 4, 'by taste');

INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (35, 5, '4  spoons');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (36, 5, 'by taste');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (30, 5, '4  spoons');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (18, 5, '2 kg');

INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (2, 6, '3 eggs');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (16, 6, '30 ml');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (7, 6, '250 ml');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (37, 6, '5 units');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (34, 6, '125 g');

INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (2, 7, '2 eggs');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (16, 7, 'a little');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (7, 7, '100 ml');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (5, 7, '1 tea spoon');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (3, 7, '2 tea spoon');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (34, 7, '100 g');

INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (18, 8, '1 kg');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (7, 8, '200 ml');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (5, 8, '1 tea spoon');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (4, 8, '1 tea spoon');

INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (2, 9, '3eggs');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (7, 9, '100 ml');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (34, 9, '100 g');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (1, 9, '100 ml');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (16, 9, '1 spoon');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (5, 9, '1 tea spoon');

INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (18, 10, '600 g');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (34, 10, '10 g');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (5, 10, '1 tea spoon');
INSERT INTO recepi_ingredients (ingredient_id, recepi_id, amount) VALUES (31, 10, '2 g');

INSERT INTO categories (name) VALUES ('Boiled');
INSERT INTO categories (name) VALUES ('Fried');
INSERT INTO categories (name) VALUES ('Baked');
INSERT INTO categories (name) VALUES ('Cookies');
INSERT INTO categories (name) VALUES ('Pancakes');
INSERT INTO categories (name) VALUES ('Sauces');

INSERT INTO recepi_categories (category_id, recepi_id) VALUES (1,1);
INSERT INTO recepi_categories (category_id, recepi_id) VALUES (6,2);
INSERT INTO recepi_categories (category_id, recepi_id) VALUES (3,3);
INSERT INTO recepi_categories (category_id, recepi_id) VALUES (4,3);
INSERT INTO recepi_categories (category_id, recepi_id) VALUES (3,4);
INSERT INTO recepi_categories (category_id, recepi_id) VALUES (4,4);
INSERT INTO recepi_categories (category_id, recepi_id) VALUES (1,5);
INSERT INTO recepi_categories (category_id, recepi_id) VALUES (5,6);
INSERT INTO recepi_categories (category_id, recepi_id) VALUES (5,7);
INSERT INTO recepi_categories (category_id, recepi_id) VALUES (5,8);
INSERT INTO recepi_categories (category_id, recepi_id) VALUES (5,9);
INSERT INTO recepi_categories (category_id, recepi_id) VALUES (5,10);