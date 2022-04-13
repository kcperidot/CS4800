CREATE TABLE Notown.Address (
                AddressID INTEGER NOT NULL,
                Zip Code INTEGER NOT NULL,
                Street1 VARCHAR NOT NULL,
                Street2 VARCHAR NOT NULL,
                City VARCHAR NOT NULL,
                Telephone VARCHAR NOT NULL,
                Number INTEGER NOT NULL,
                State VARCHAR NOT NULL,
                CONSTRAINT address_id PRIMARY KEY (AddressID)
);


CREATE TABLE Notown.song (
                Title VARCHAR NOT NULL,
                Length INTEGER NOT NULL,
                SSN INTEGER NOT NULL,
                Name VARCHAR NOT NULL,
                AlbumID INTEGER NOT NULL,
                CONSTRAINT song_id PRIMARY KEY (Title)
);


CREATE TABLE Notown.Instrument (
                Name VARCHAR NOT NULL,
                Pitch VARCHAR NOT NULL,
                Title VARCHAR NOT NULL,
                CONSTRAINT instrument_id PRIMARY KEY (Name)
);


CREATE TABLE Notown.Musician (
                SSN INTEGER NOT NULL,
                Name VARCHAR NOT NULL,
                Title VARCHAR NOT NULL,
                AddressID INTEGER NOT NULL,
                CONSTRAINT musician_id PRIMARY KEY (SSN, Name)
);


CREATE TABLE Notown.Album (
                AlbumID INTEGER NOT NULL,
                Title VARCHAR NOT NULL,
                Release_Date DATE NOT NULL,
                Format VARCHAR NOT NULL,
                Age INTEGER NOT NULL,
                SSN INTEGER NOT NULL,
                Name VARCHAR NOT NULL,
                CONSTRAINT album_id PRIMARY KEY (AlbumID)
);


ALTER TABLE Notown.Musician ADD CONSTRAINT address_musician_fk
FOREIGN KEY (AddressID)
REFERENCES Notown.Address (AddressID)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE Notown.Musician ADD CONSTRAINT song_musician_fk
FOREIGN KEY (Title)
REFERENCES Notown.song (Title)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE Notown.Instrument ADD CONSTRAINT song_instrument_fk
FOREIGN KEY (Title)
REFERENCES Notown.song (Title)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE Notown.Musician ADD CONSTRAINT instrument_musician_fk
FOREIGN KEY (Name)
REFERENCES Notown.Instrument (Name)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE Notown.song ADD CONSTRAINT musician_song_fk
FOREIGN KEY (SSN, Name)
REFERENCES Notown.Musician (SSN, Name)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE Notown.Album ADD CONSTRAINT musician_album_fk
FOREIGN KEY (SSN, Name)
REFERENCES Notown.Musician (SSN, Name)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE Notown.song ADD CONSTRAINT album_song_fk
FOREIGN KEY (AlbumID)
REFERENCES Notown.Album (AlbumID)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
