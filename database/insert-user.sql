use ustora;

insert into category(categorycode, categoryName) values('lap-top','lap top');
insert into category(categorycode, categoryName) values('smartphone','smartphone');

insert into product(image, name, price, quantity, description, shortdescription, category_id) values('product-1.jpg','Samsung Galaxy s5- 2015',700, 1, 'Common Descript', 'Test Decript',2);
insert into product(image, name, price, quantity,description, shortdescription, category_id) values('product-2.jpg','Nokia Lumia 1320',999, 2, 'Common Descript', 'Test Decript',2);
insert into product(image, name, price, quantity,description, shortdescription, category_id) values('product-3.jpg','LG Leon 2015',425, 3, 'Common Descript', 'Test Decript',2);
insert into product(image, name, price, quantity,description, shortdescription, category_id) values('product-4.jpg','Sony Microsoft',225, 4, 'Common Descript', 'Test Decript',2);

insert into role(code,name) values('ADMIN','Quản trị');
insert into role(code,name) values('USER','Người dùng');

insert into user(username,password,fullname,status)
values('admin','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','trương tùng lâm',1);
insert into user(username,password,fullname,status)
values('nguyenvana','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','nguyễn văn A',1);
insert into user(username,password,fullname,status)
values('nguyenvanb','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','nguyễn văn B',1);

INSERT INTO user_role(userid,roleid) VALUES (1,1);
INSERT INTO user_role(userid,roleid) VALUES (2,2);
INSERT INTO user_role(userid,roleid) VALUES (3,2);

insert into slides(img, caption, content) values('h4-slide.png','iPhone 6 Plus', 'Dual SIM');
insert into slides(img, caption, content) values('h4-slide2.png','by one, get one 50% off', 'school supplies & backpacks.*');
insert into slides(img, caption, content) values('h4-slide3.png','Apple Store Ipod', 'Select Iten');
insert into slides(img, caption, content) values('h4-slide4.png','Apple Store Ipod', '&Phone');