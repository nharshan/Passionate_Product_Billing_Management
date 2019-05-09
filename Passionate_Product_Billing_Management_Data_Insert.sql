##Passionate Data Entry Query for mydb
##By Harshan Nagulapally
##SID: 01597680
##to Prof Kui Du
use mydb;

##CUSTOMER TABLE DATE ENTRY
INSERT INTO customer VALUES (1001, 'firstname1','lastname1','middlename1','email1@abc.com', '123-465-7890', 'abc1', 'xyz1', 1234);
INSERT INTO customer VALUES (1002, 'firstname2','lastname2','middlename2','email2@abc.com', '231-465-7890', 'abc2', 'xyz2', 4321);
INSERT INTO customer VALUES (1003, 'firstname3','lastname3','middlename3','email3@abc.com', '312-465-7890', 'abc3', 'xyz3', 2413);
INSERT INTO customer VALUES (1004, 'firstname4','lastname4','middlename4','email4@abc.com', '321-465-7890', 'abc4', 'xyz4', 1324);
INSERT INTO customer VALUES (1005, 'firstname5','lastname5','middlename5','email5@abc.com', '213-465-7890', 'abc5', 'xyz5', 3142);
INSERT INTO customer VALUES (1006, 'firstname6','lastname6','middlename6','email6@abc.com', '132-465-7890', 'abc6', 'xyz6', 4213);


##MANAGER TABLE DATE ENTRY
INSERT INTO manager VALUES (2001, 'alpha', 'alpha1', 'alpha2', '123-111-1111', 1111);
INSERT INTO manager VALUES (2002, 'beta', 'beta1', 'beta2', '123-222-2222', 2222);
INSERT INTO manager VALUES (2003, 'gama', 'gama1', 'gama2', '123-333-3333', 3333);
INSERT INTO manager VALUES (2004, 'delta', 'delta1', 'delta2', '123-444-4444', 4444);
INSERT INTO manager VALUES (2005, 'omega', 'omgea1', 'omega2', '123-555-5555', 5555);
INSERT INTO manager VALUES (2006, 'echo', 'echo1', 'echo2', '123-666-6666', 6666);


##STORE TABLE DATA ENTRY
INSERT INTO store VALUES (010,'passionate_dream_world', 's-city','6060', 0606, 'passionate@gmail.com');
INSERT INTO store VALUES (020,'passionate_collections', 'h-city','5050', 0505, 'passionate_coll@gmail.com');
INSERT INTO store VALUES (030,'passionate_whole_world', 'b-city','4040', 0404, 'passionate_ww@gmail.com');
INSERT INTO store VALUES (040,'passionate_extension', 'n-city','3030', 0303, 'passionate_ext@gmail.com');
INSERT INTO store VALUES (050,'passionate_passion', 't-city','2020', 0202, 'passionate_passion@gmail.com');
INSERT INTO store VALUES (060,'passionate_nextgen', 'f-city','1010', 0101, 'passionate_nxt@gmail.com');


##PRODUCT TABLE DATA ENTRY
##  productcode,  productname,  producttax,  producttype,
INSERT INTO product VALUES (1100, 'baby_toy', '10', 'puzzle');
INSERT INTO product VALUES (2200, 'message_card', '10', 'greeting_card');
INSERT INTO product VALUES (3300, 'battry_toy', '10', 'sensor_toy');
INSERT INTO product VALUES (4400, 'business', '10', 'board_game');
INSERT INTO product VALUES (5500, 'spinner', '10', 'fidget_toy');
INSERT INTO product VALUES (6600, 'teddy', '10', 'soft_toy');


##ITEM TABLE DATA ENTRY
##  itemid,  itemname,  itemprice,  productid,  quantity,  product_productcode,
INSERT INTO item VALUES (1, 'panda', '199', 6600, '100', 6600);
INSERT INTO item VALUES (2, 'drone', '999', 3300, '100', 3300);
INSERT INTO item VALUES (3, 'car', '399', 3300, '100', 3300);
INSERT INTO item VALUES (4, 'pokimon_spinner', '59', 5500, '100', 5500);
INSERT INTO item VALUES (5, 'scotland_yard', '499', 4400, '100', 4400);
INSERT INTO item VALUES (6, 'welcome_card', '99', 2200, '100', 2200);


##INVOICE TABLE DATA ENTRY
## invoiceid,  customerid,  invoicedate,  itemid,  itemquantity,  itemprice,  itemtax,  totalamount,
## customer_customer_id,  store_storeid,  manager_managerid,  item_itemid,  item_product_productcode,

INSERT INTO invoice VALUES (99991, 1001, '2018-10-11', 2, 1, 999, 10, 1099, 1001, 010, 2001, 2, 3300);
INSERT INTO invoice VALUES (99992, 1002, '2017-10-11', 1, 1, 199, 10, 209, 1002, 020, 2001, 1, 6600);
INSERT INTO invoice VALUES (99993, 1003, '2016-10-12', 6, 1, 99, 10, 109, 1003, 030, 2001, 6, 2200);
INSERT INTO invoice VALUES (99994, 1004, '2015-10-12', 4, 1, 59, 10, 69, 1004, 020, 2002, 4, 5500);
INSERT INTO invoice VALUES (99995, 1006, '2014-10-12', 2, 1, 999, 10, 1099, 1006, 010, 2003, 2, 3300);
INSERT INTO invoice VALUES (99996, 1005, '2013-10-10', 5, 1, 499, 10, 509, 1005, 050, 2004, 5, 4400);
