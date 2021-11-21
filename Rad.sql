drop  database if exists zavrsni;
create database zavrsni character set utf8;
use zavrsni;

create table bistroLoora(
    sifra int not null primary key auto_increment,
    jelovnik int not null,
    vinska karta int not null,
    rezervacija varchar(50) ,
    dostava boolean,
    nacinPlacanja varchar(50)
);

create table jelovnik(

sifra int not null primary key auto_increment,
specijaliteti varchar(50) not null,
obicnaHrana varchar(50) not null,
juhe varchar(50) not null,
salate varchar(50) not null
);

create table rezervacija(
sifra int not null primary key auto_increment,
prezime varchar(50) not null,
vrijemeRezervacije datetime  not null,
brojRezerviranihMjesta varchar(50) not null,
razlog varchar(50)
);

create table vinska karta(
    sifra int not null primary key auto_increment,
    bijelo varchar(50),
    crno varchar(50),
    misno varchar(50),
    korlat varchar(50)
);

