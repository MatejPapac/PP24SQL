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

create table jelovnik (
        sifra int not null primary key auto_increment,
        vrsta int not null ,
        cijena varchar(50) not null,
        naziv varchar(50) not null,
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


insert into jelo(sifra,naziv,cijena,vrsta)
values(null,'Slavonska Pizza','32,00','Pizza'),
(null,'Pikant Pizza','28,00','Pizza'),
(null,'Dalmatinska Pizza','30,00','Pizza'),
(null,'Piletina 4 vrsta sira','35,00','Tijesta');

insert into pice(sifra,naziv,cijena,vrsta)
values(null,'Cedevita','9,00','Sokovi'),
(null,'Pelinkovac','8,00','Zesta'),
(null,'Misni Traminac','14,00','Vina');

insert into rezervacija(sifra,datumiVrijeme,osoba,brojRezerviranihMjesta,mjesto,kontakt,napomena)
values(null,'12-07-2023','James Maynard','6','Stol 106','Maynard@gmail.com','Ako može da nam pripremite 6 boca vina');




