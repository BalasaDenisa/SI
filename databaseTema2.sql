create database inspectoratPolitie
use inspectoratPolitie

create table InspectoratPolitie(
numeIP varchar(45) not null,
iUsername varchar(45),
iPassword varchar(45),
nume varchar(45), 	
prenume varchar(45),
adresaInsp varchar(45),
nrTefelon varchar(20),

primary key(numeIP)
);


create table SectiePolitie(
numeSectie varchar(45) not null,
adresaSectie varchar(45),
specificSectie varchar(45),
numeIP varchar(45),
latitudine double,
longitudine double,

primary key(numeSectie),
foreign key(numeIP) references InspectoratPolitie(numeIP)
);

create table AgentPolitie(
id varchar(45),
aUsername varchar(45),
aPassword varchar(45),
nume varchar(45),
prenume varchar(45),
adresaAgent varchar(45),
pregatireProfesionala varchar(45),
conduitaMorala varchar(45),
nrCazuriRezolvate int,
functie varchar(45),
numeSectieAg varchar(45),

primary key(id),
foreign key(numeSectieAg) references SectiePolitie(numeSectie)
);

create table Categorie(
numeCategorie varchar(45) not null,

primary key(numeCategorie)
);

create table Dosar(
numeDosar varchar(45) not null,
descriere varchar(45),
statusDosar varchar(45),
downloadDosar mediumblob,
numeCateg varchar(45),

primary key(numeDosar),
foreign key(numeCateg) references Categorie(numeCategorie)
);

create table AgentDosar(
idAgent varchar(45),
numeDosarAg varchar(45),

foreign key(idAgent) references AgentPolitie(id),
foreign key(numeDosarAg) references Dosar(numeDosar)
);

create table SectieCategorie(
numeSectieC varchar(45),
numeCategS varchar(45),

foreign key(numeSectieC) references SectiePolitie(numeSectie),
foreign key(numeCategS) references Categorie(numeCategorie)
);


insert into inspectoratpolitie values(
'Inspectorat Politie Dolj',
'admin',
'admin',
'Bălașa',
'Andrei',
'Str. Vulturi nr. 19',
'0251407510'
);

insert into sectiepolitie values(
'Sectia I Politie',
'str. Libertăţii, Craiova',
'Serviciu rutier',
'Inspectorat Politie Dolj',
'44.319611081888496',
'23.787739276885986'
);

insert into sectiepolitie values(
'Sectia II Politie',
'str. Dr. Dimitrie Gerota, Craiova',
'Serviciu de investigare a fraudelor',
'Inspectorat Politie Dolj',
'44.303228243725634',
'23.793790340423584'
);


insert into sectiepolitie values(
'Sectia III Politie',
'str. Henri Coandă, Craiova',
'Serviciu persoane disparute',
'Inspectorat Politie Dolj',
'44.307297510420824',
'23.821299076080322'
);

insert into sectiepolitie values(
'Sectia IV Politie',
'str.Paltinis, Craiova', 
'Serviciu persoane disparute',
'Inspectorat Politie Dolj',
'44.32645766082435',
'23.804819583892822'
);

insert into sectiepolitie values(
'Sectia V Politie',
'str. N. Coculescu, Craiova',
'Serviciu obiecte furate',
'Inspectorat Politie Dolj',
'44.34011772840826',
'23.78143072128296'
);

insert into sectiepolitie values(
'Sectia VI Politie',
'str. Amaradia, Craiova',
'Serviciu obiecte furate',
'Inspectorat Politie Dolj',
'44.3255826941485',
'23.7923526763916'
);

insert into agentpolitie values(
'87892',
'stuparu',
'stuparu92',
'Stuparu',
'Constatin',
'str. Gasda',
'Academia de Politie „Alexandru Ioan Cuza"',
'disponibilitatea',
12,
'subcomisar',
'Sectia VI Politie'
);

insert into agentpolitie values(
'134322',
'cojocaru',
'cojo1234',
'Cojocaru',
'Nicusor',
'str. Iones',
'Şcoala de Agenţi "Septimiu Mureşan"',
'respectul',
10,
'adjunct sef sectie',
'Sectia I Politie'
);

insert into agentpolitie values(
'457211',
'badea',
'badeasorin7',
'Badea',
'Sorin',
'str. Eroilor',
'Scoala de Agenti "Vasile Lascar"',
'profesionalismul',
10,
'sef sectie',
'Sectia II Politie'
);

insert into agentpolitie values(
'9124511',
'grigore',
'grig912',
'Grigore',
'Bogdan',
'str. Nosa',
'Şcoala de Agenţi "Septimiu Mureşan"',
'prioritatea interesului public',
15,
'adjunct sef sectie',
'Sectia III Politie'
);

insert into agentpolitie values(
'123211',
'proca',
'proca23',
'Proca',
'Cristina',
'str. Ena',
'Scoala de Agenti "Vasile Lascar"',
'transparenţa',
7,
'comisar sef',
'Sectia IV Politie'
);

insert into agentpolitie values(
'5411223',
'proboi',
'priboi34',
'Priboi',
'Ion',
'str. Iliescu',
'Academia de Politie „Alexandru Ioan Cuza"',
'loialitatea',
17,
'sef sectie',
'Sectia V Politie'
);

insert into categorie values(
'Infractiuni in regim rutier'
);

insert into categorie values(
'Infractiuni in domeniul silvic'
);

insert into categorie values(
'Coruptie'
);

insert into categorie values(
'Infractiuni economice'
);

insert into categorie values(
'Infractiuni contra patrimoniului'
);

insert into categorie values(
'Infractiuni contra umanitatii'
);

insert into dosar(NumeDosar, Descriere, StatusDosar, NumeCateg) values(
'22X3',
'Autovehicul neinmatriculat',
'In desfasurare',
'Infractiuni in regim rutier'
);

insert into dosar(NumeDosar, Descriere, StatusDosar, NumeCateg) values(
'21ff3',
'Fara permis conducere',
'In desfasurare',
'Infractiuni in regim rutier'
);

insert into dosar(NumeDosar, Descriere, StatusDosar, NumeCateg) values(
'1qag54',
'Taiere arbori fara autorizatie',
'In desfasurare',
'Infractiuni in domeniul silvic'
);

insert into dosar(NumeDosar, Descriere, StatusDosar, NumeCateg) values(
'75nh',
'Furt de arbori',
'In desfasurare',
'Infractiuni in domeniul silvic'
);

insert into dosar(NumeDosar, Descriere, StatusDosar, NumeCateg) values(
'11XC4',
'Luare mita',
'Solutionat',
'Coruptie'
);

insert into dosar(NumeDosar, Descriere, StatusDosar, NumeCateg) values(
'988sdg',
'Abuz in serviciu',
'Solutionat',
'Coruptie'
);

insert into dosar(NumeDosar, Descriere, StatusDosar, NumeCateg) values(
'297az3',
'Evaziune fiscala',
'In desfasurare',
'Coruptie'
);

insert into agentdosar values(
'87892',
'22X3'
);

insert into agentdosar values(
'5411223',
'297az3'
);

insert into agentdosar values(
'134322',
'21ff3'
);

insert into agentdosar values(
'457211',
'1qag54'
);

insert into agentdosar values(
'9124511',
 '11XC4'
);

insert into agentdosar values(
'123211',
'75nh'
);

insert into sectiecategorie values(
'Sectia I Politie',
'Coruptie'
);

insert into sectiecategorie values(
'Sectia II Politie',
'Infractiuni in regim rutier'
);

insert into sectiecategorie values(
'Sectia III Politie',
'Infractiuni in domeniul silvic'
);

insert into sectiecategorie values(
'Sectia IV Politie',
'Infractiuni economice'
);

insert into sectiecategorie values(
'Sectia V Politie',
'Coruptie'
);

insert into sectiecategorie values(
'Sectia VI Politie',
'Infractiuni contra patrimoniului'
);

