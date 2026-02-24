<h1 align="center">SQL Olist Database Creation and Data Injection</h1>

<p align="center">
  Relational database modeling and data loading project based on the Brazilian Olist E-commerce Dataset.
</p>

<hr>

<h2>📌 Project Overview</h2>

<p>
This project implements a fully normalized relational database for the <strong>Olist E-commerce Dataset</strong>.
It includes:
</p>

<ul>
  <li>Database schema creation using SQL</li>
  <li>Primary and Foreign key constraints</li>
  <li>Composite keys where required</li>
  <li>Data injection (ETL-ready structure)</li>
  <li>Relational integrity enforcement</li>
</ul>

<p>
The database models a real-world e-commerce system including customers, orders, products, sellers, payments, and reviews.
</p>

<hr>

<h2>🗂️ Database Schema</h2>

<p>The system is composed of the following relational tables:</p>

<h3>1️⃣ Customers</h3>
<ul>
  <li><strong>customer_id</strong> (PK)</li>
  <li>customer_unique_id</li>
  <li>customer_zip_code_prefix</li>
  <li>customer_city</li>
  <li>customer_state</li>
</ul>

<h3>2️⃣ Orders</h3>
<ul>
  <li><strong>order_id</strong> (PK)</li>
  <li>customer_id (FK → Customers)</li>
  <li>order_status</li>
  <li>order_purchase_timestamp</li>
  <li>order_approved_at</li>
  <li>order_delivered_carrier_date</li>
  <li>order_delivered_customer_date</li>
  <li>order_estimated_delivery_date</li>
</ul>

<h3>3️⃣ Order_Items</h3>
<ul>
  <li><strong>Composite PK:</strong> (order_id, order_item_id)</li>
  <li>product_id (FK → Products)</li>
  <li>seller_id (FK → Sellers)</li>
  <li>shipping_limit_date</li>
  <li>price</li>
  <li>freight_value</li>
</ul>

<h3>4️⃣ Order_Payments</h3>
<ul>
  <li><strong>order_id</strong> (FK → Orders)</li>
  <li>payment_sequential</li>
  <li>payment_type</li>
  <li>payment_installments</li>
  <li>payment_value</li>
</ul>

<h3>5️⃣ Order_Reviews</h3>
<ul>
  <li><strong>review_id</strong> (PK)</li>
  <li>order_id (FK → Orders)</li>
  <li>review_score</li>
  <li>review_comment_title</li>
  <li>review_comment_message</li>
  <li>review_creation_date</li>
  <li>review_answer_timestamp</li>
</ul>

<h3>6️⃣ Products</h3>
<ul>
  <li><strong>product_id</strong> (PK)</li>
  <li>product_category_name (FK → Category_Name_Translation)</li>
  <li>product_name_lenght</li>
  <li>product_description_lenght</li>
  <li>product_photos_qty</li>
  <li>product_weight_g</li>
  <li>product_length_cm</li>
  <li>product_height_cm</li>
  <li>product_width_cm</li>
</ul>

<h3>7️⃣ Sellers</h3>
<ul>
  <li><strong>seller_id</strong> (PK)</li>
  <li>seller_zip_code_prefix</li>
  <li>seller_city</li>
  <li>seller_state</li>
</ul>

<h3>8️⃣ Category_Name_Translation</h3>
<ul>
  <li><strong>product_category_name</strong> (PK)</li>
  <li>product_category_name_english</li>
</ul>

<hr>

<h2>🔗 Entity Relationships</h2>

<ul>
  <li>One Customer → Many Orders</li>
  <li>One Order → Many Order_Items</li>
  <li>One Order → Many Payments</li>
  <li>One Order → One Review</li>
  <li>One Product → Many Order_Items</li>
  <li>One Seller → Many Order_Items</li>
  <li>One Category → Many Products</li>
</ul>

<p>
All relationships are enforced using <strong>Foreign Key constraints</strong> to guarantee referential integrity.
</p>

<hr>

<h2>⚙️ Technologies Used</h2>

<ul>
  <li>SQL (DDL & DML)</li>
  <li>Relational Database Management System (SQL Server Management Studio (SSMS) / PostgreSQL compatible)</li>
  <li>ERD-based schema design</li>
</ul>

<hr>


<hr>

<h2>📊 Use Cases</h2>

<ul>
  <li>SQL practice (joins, aggregations, subqueries)</li>
  <li>Data analysis & BI projects</li>
  <li>ETL pipeline practice</li>
  <li>Database normalization study</li>
  <li>Performance optimization & indexing exercises</li>
</ul>

<hr>

<h2>📈 Future Improvements</h2>

<ul>
  <li>Add indexing optimization</li>
  <li>Implement stored procedures</li>
  <li>Create analytical views</li>
  <li>Build Power BI / Tableau dashboard integration</li>
</ul>

<hr>

<h2>👨‍💻 Author</h2>

<p>
Developed as part of SQL database modeling and data engineering practice.
</p>

<hr>

<p align="center">
  ⭐ If you found this project useful, consider giving it a star!
</p>
