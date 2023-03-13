use ustora;

insert into category(categorycode, categoryName) values('lap-top','lap top');
insert into category(categorycode, categoryName) values('smartphone','smartphone');

insert into product(name, price, quantity, description, shortdescription, category_id) values('smartphoneX',10000000, 1, 'Common Descript', 'Test Decript',2);
insert into product(name, price, quantity,description, shortdescription, category_id) values('smartphoneA',10000000, 2, 'Common Descript', 'Test Decript',1);
insert into product(name, price, quantity,description, shortdescription, category_id) values('smartphoneB',10000000, 3, 'Common Descript', 'Test Decript',1);
insert into product(name, price, quantity,description, shortdescription, category_id) values('smartphoneC',10000000, 4, 'Common Descript', 'Test Decript',2);

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