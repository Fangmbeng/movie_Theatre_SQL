create  table Customer(
customer_id serial primary key,
first_name VARCHAR(30),
last_name VARCHAR(30)
);

create table Tickets(
Ticket_id serial primary key,
"Time" TIMESTAMP,
movie_id INTEGER,
foreign key (movie_id) references movie(movie_id),
customer_id INTEGER,
foreign key(customer_id) references Customer(customer_id)
);

create table movie(
movie_id serial primary key not null,
Rating VARCHAR(6) not null,
movie_name VARCHAR(30) not null,
Release_date TIMESTAMP not null,
Category VARCHAR(10) not null,
"Language" VARCHAR(15) not null
);


create table Backup_data(
customer_id INTEGER not null,
foreign key(customer_id) references Customer(customer_id),
movie_id INTEGER not null,
foreign key(movie_id) references movie(movie_id),
ticket_id INTEGER not null,
foreign key(ticket_id) references tickets(ticket_id)
);

