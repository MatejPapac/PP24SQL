drop  database if exists zavrsni;
create database zavrsni character set utf8;
use zavrsni;

create table jelo(
        sifra  int not null primary key auto_increment,
        naziv  int not null,
        cijena int not null,
        vrsta  int not null 
       
       
    );

create table pice(
        sifra int not null primary key auto_increment,
        naziv int not null,
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
        naziv int not null,
        rezervacija boolean,
        brojStolica varchar(50)
  

 
);

create table jelovnik (
        sifra int not null primary key auto_increment,
        vrsta int not null ,
        cijena int not null,
        naziv int not null,
        pizza varchar (50) not null,
        tijesta varchar (50) not null,
        riba varchar (50) not null,
        odresci varchar(50) not null,
        vina varchar(50) not null,
        zesta varchar(50) not null,
        sokovi varchar(50) not null,
        piva varchar(50) not null
);

create table rezervacija_mjesto (
        sifra int not null primary key auto_increment,
        rezervacija int not null,
        mjesto int not null
);

alter table jelovnik add foreign key (vrsta) references pice(sifra);
alter table jelovnik add foreign key (vrsta) references jelo(sifra);

alter table rezervacija_mjesto add foreign key (mjesto) references rezervacija(sifra);
alter table rezervacija_mjesto add foreign key (rezervacija) references mjesto(sifra);







