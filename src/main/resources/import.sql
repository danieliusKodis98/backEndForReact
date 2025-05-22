INSERT INTO users ( username, password, role, name, last_name) VALUES ( 'b', 'b', 'user','kristijonas','kubilius');
INSERT INTO users ( username, password, role, name, last_name) VALUES ( 'a', 'a', 'admin','jonas','tumas');


INSERT INTO ingredients(name) VALUES ('water');
INSERT INTO ingredients(name) VALUES ('medium chicken egg');


INSERT INTO recepi ( user_id,  cooking_instructions, description,  name) VALUES (1,  'Wait till water starts boiling, then add eggs and cook for 10 minutes', 'Very simple dish', 'Boiled eggs');



INSERT INTO recepi_ingredients ( ingredient_id, recepi_id, amount) VALUES(1, 1, '500ml');
INSERT INTO recepi_ingredients ( ingredient_id, recepi_id, amount) VALUES(2, 1, '5 eggs');