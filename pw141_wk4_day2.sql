CREATE TABLE "Tickets" (
  "Ticket_id" SERIAL,
  "Customer_id" INT,
  "Seat_id" VARCHAR(10),
  "Movie_id" INT,
  "Price" Numeric(8,2),
  PRIMARY KEY ("Ticket_id")
);

CREATE TABLE "Movie" (
  "Movie_id" SERIAL,
  "Title" VARCHAR(255),
  "Genre" VARCHAR(100),
  "Release_date" Date,
  PRIMARY KEY ("Movie_id")
);

CREATE TABLE "Customer" (
  "customer_id" SERIAL,
  "Name" VARCHAR(100),
  "Email" VARCHAR(100)
);

CREATE INDEX "Pk" ON  "Customer" ("customer_id");

CREATE INDEX "Key" ON  "Customer" ("Name", "Email");

CREATE TABLE "Theater" (
  "Theater_id" SERIAL,
  "Name" VARCHAR(255),
  "Location" VARCHAR(255),
  PRIMARY KEY ("Theater_id"),
  CONSTRAINT "FK_Theater.Location"
    FOREIGN KEY ("Location")
      REFERENCES "Customer"("customer_id")
);

CREATE TABLE "Concession" (
  "Concessions" SERIAL,
  "Movie_id" INT,
  "Item_name" VARCHAR(100),
  "Price" Numeric(8,2),
  "Quantity" INT,
  PRIMARY KEY ("Concessions")
);

