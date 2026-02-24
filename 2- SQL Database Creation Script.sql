use [Olist DB];


create table Customers (
	customer_id VARCHAR(255),
	customer_unique_id VARCHAR(255),
	customer_zip_code_prefix INT,
	customer_city VARCHAR(255),
	customer_state VARCHAR(255),
	primary key (customer_id),
) ;





create table Orders (
	order_id Varchar(255),
	customer_id Varchar(255),
	order_status Varchar(255),
	order_purchase_timestamp datetime,
	order_approved_at datetime,
	order_delivered_carrier_date datetime,
	order_delivered_customer_date datetime,
	order_estimated_delivery_date datetime,
	primary key (order_id),
	foreign key (customer_id) references Customers(customer_id)
) ;

create table Order_Payments (
	order_id VARCHAR(255),
	payment_sequential INT,
	payment_type VARCHAR(255),
	payment_installments INT,
	payment_value DECIMAL(10,2),
	primary key (order_id,payment_sequential),
	foreign key (order_id) references Orders(order_id)
) ;

create table Order_Reviews (
	review_id VARCHAR(255),
	order_id VARCHAR(255),
	review_score INT,
	review_comment_title VARCHAR(255),
	review_comment_message VARCHAR(255),
	review_creation_date DATETIME,
	review_answer_timestamp DATETIME,
	primary key (review_id)
);

create table Sellers (
	seller_id VARCHAR(255),
	seller_zip_code_prefix INT,
	seller_city VARCHAR(255),
	seller_state VARCHAR(255),
	primary key (seller_id)
) ;

create table Category_Name_Translation (
	product_category_name VARCHAR(255),
	product_category_name_english VARCHAR(255),
	primary key (product_category_name)
) ;

create table Products (
	product_id VARCHAR(255),
	product_category_name VARCHAR(255),
	product_name_lenght INT,
	product_photos_qty INT,
	product_weight_g DECIMAL(10,2),
	product_length_cm DECIMAL(10,2),
	product_height_cm DECIMAL(10,2),
	product_width_cm DECIMAL(10,2),

	primary key (product_id),
	foreign key (product_category_name) references Category_Name_Translation(product_category_name)
);


create table Order_Items (
	order_id VARCHAR(255),
	order_item_id INT,
	product_id VARCHAR(255),
	seller_id VARCHAR(255),
	shipping_limit_date DATETIME,
	price DECIMAl(10,2),
	freight_value DECIMAl(10,2),
	primary key (order_id, order_item_id),
	foreign key (order_id) references Orders(order_id),
	foreign key (product_id) references Products(product_id),
	foreign key (seller_id) references Sellers(seller_id)
);



-- Add new column "product_description_length"
ALTER TABLE dbo.Products
ADD product_description_length INT;

