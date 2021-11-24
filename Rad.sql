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
napomena varchar(50)
);

create table mjesto(
    sifra int not null primary key  auto_increment,
    naziv int not null,
    rezervacija int not null,
    brojMjesta varchar(50)

 
);

create table vrstaPica (
    sifra int not null primary key auto_increment,
    vrsta int not null,
    vina varchar(50) not null,
    zestice varchar(50) not null,
    sokovi varchar(50) not null,
    piva varchar(50) not null


);
create table vrstaJela (
    sifra int not null primary key auto_increment,
    vrsta int not null,
    pizza varchar(50),
    tijesta varchar(50),
    riba varchar(50),
    odresci varchar(50)

);
create table cijena(
    sifra int not null primary key auto_increment,
    cijena int not null

);
create table naziv(
    sifra int not null primary key auto_increment,
    naziv int not null
);

alter table naziv add foreign key (naziv) references jelo(sifra);
alter table cijena add foreign key (cijena) references jelo(sifra);
alter table jelo add foreign key (vrsta) references vrstaJela(sifra);
alter table pice add foreign key (vrsta) references vrstePica(sifra);
alter table mjesto add foreign key (rezervacija) references rezervacija(sifra);
alter table rezervacija add foreign key (mjesto) references mjesto(sifra);




