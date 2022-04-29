##1
create database ecommerce;
##2
##importing data
##3 structure of table
use ecommerce;
describe users_data;
select * from users_data;
select count(*) from users_data;
##4: first 100 rows
select * from users_data limit 100;
##5: 
select  count(distinct country),count(distinct language) from users_data;
##6:
select count(case when gender='M' then 1 end) as male_cnt,count(case when gender='F' then 1 end) as female_cnt,count(*) as total_cnt from users_data;
##7:
select count(case when hasProfilePicture='True' then 1 end) as ProfilePicture,count(case when hasAnyApp='True' then 1 end) as AnyApp,count(case when hasAndroidApp='True' then 1 end) as AndroidApp,count(case when hasIosApp='True' then 1 end) as IosApp from users_data;
##8:
select country,sum(productsBought) No_of_buyers from users_data group by country order by sum(productsBought) desc;
##9:
select country,avg(productsSold) No_of_buyers from users_data group by country order by sum(productsSold) asc;
##10:
select country from users_data group by country order by sum(productsPassRate) desc limit 10;
##11:
select language, count(type) No_of_users from users_data group by language ;
##12:
select sum(productsWished) wishlist, sum(socialProductsLiked) socialy_liked  from users_data where gender='F' ;
##13:
select sum(productsBought) buyer, sum(productsSold) seller  from users_data where gender='M' ;
##14:
select country country_name,sum(productsBought) productsBought from users_data group by country order by sum(productsBought) desc limit 1;
##15:
select country country_name,sum(productsSold) sellers from users_data group by country order by sum(productsSold) asc limit 10;
##16:
select * from users_data order by daysSinceLastLogin asc limit 101;
##17:
select count(case when gender='F' then 1 end) as female_cnt from users_data where daysSinceLastLogin > 100;
##18:
select country,count(case when gender='F' then 1 end) as female_cnt from users_data group by country;
##19:
select country,count(case when gender='M' then 1 end) as male_cnt from users_data group by country;
##20:
select country, avg(productsSold) productsSold ,avg(productsBought) productsBought from users_data where gender='M' group by country;



