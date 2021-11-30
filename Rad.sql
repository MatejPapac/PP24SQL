drop  database if exists zavrsni;
create database zavrsni character set utf8;
use zavrsni;

create table jelo(
        sifra  int not null primary key auto_increment,
        naziv  varchar(50) not null,
        cijena varchar(50) not null,
        vrsta  int not null 
       
       
    );

create table pice(
        sifra int not null primary key auto_increment,
        naziv varchar(50) not null,
        cijena varchar(50) not null,
        vrsta int not null


);

    create table rezervacija(
        sifra int not null primary key auto_increment,
        datumiVrijeme datetime not null,
        osoba varchar(50) not null,
        brojRezerviranihMjesta varchar(50) not null,
        mjesto int not null ,
        kontakt varchar(50) not null,
        napomena varchar(50)
);

create table mjesto(
        sifra int not null primary key  auto_increment,
        naziv varchar(50) not null,
        rezervacija boolean,
        brojStolica varchar(50)
  

 
);

create table vrsta (
        sifra int not null primary key auto_increment,
        naziv varchar (50) not null
);

create table rezervacija_mjesto (
        sifra int not null primary key auto_increment,
        rezervacija int not null,
        mjesto int not null
);

alter table jelo add foreign key (vrsta) references vrsta(sifra);
alter table pice add foreign key (vrsta) references vrsta(sifra);

alter table rezervacija_mjesto add foreign key (mjesto) references rezervacija(sifra);
alter table rezervacija_mjesto add foreign key (rezervacija) references mjesto(sifra);







