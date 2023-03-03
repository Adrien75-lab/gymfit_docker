CREATE TABLE _exercises(
   idExercice INT,
   nameExercise VARCHAR(50) NOT NULL,
   descriptionExercise TEXT NOT NULL,
   created_at DATE NOT NULL,
   durationExercise VARCHAR(50),
   levelExercise VARCHAR(50),
   PRIMARY KEY(idExercice)
);

CREATE TABLE _bodyPart(
   idBodyPart INT,
   nameBodyPart VARCHAR(50) NOT NULL,
   targetBodyPart VARCHAR(50) NOT NULL,
   PRIMARY KEY(idBodyPart)
);

CREATE TABLE _workout(
   idWorkout INT,
   nameWorkout VARCHAR(50) NOT NULL,
   durationWorkout VARCHAR(50),
   resultWorkout TEXT,
   statusWorkout VARCHAR(50),
   PRIMARY KEY(idWorkout)
);

CREATE TABLE _equipment(
   idEquipment INT,
   nameEquipment VARCHAR(50) NOT NULL,
   PRIMARY KEY(idEquipment)
);

CREATE TABLE _openGym(
   idOpening VARCHAR(50),
   dayOfWeek VARCHAR(50),
   hourStart VARCHAR(50),
   hourEnd VARCHAR(50),
   PRIMARY KEY(idOpening)
);

CREATE TABLE _avaibility_coach(
   idAvaibilityCoach VARCHAR(50),
   availibilityYear DATE NOT NULL,
   avaibilityMonth DATE NOT NULL,
   avaibilityDay DATE NOT NULL,
   start_time TIME NOT NULL,
   end_time TIME,
   PRIMARY KEY(idAvaibilityCoach)
);

CREATE TABLE _booking(
   idDate VARCHAR(50),
   stateRDV VARCHAR(50),
   weightEvolution VARCHAR(50),
   sizeEvolution VARCHAR(50),
   imcEvolution VARCHAR(50),
   PRIMARY KEY(idDate)
);

CREATE TABLE _type(
   idType INT,
   valueType INT,
   PRIMARY KEY(idType)
);

CREATE TABLE _user(
   id INT,
   password VARCHAR(50),
   civility VARCHAR(50),
   lastName VARCHAR(50),
   firstName VARCHAR(50),
   role VARCHAR(50),
   PRIMARY KEY(id)
);

CREATE TABLE _admin(
   admin INT,
   PRIMARY KEY(admin),
   FOREIGN KEY(admin) REFERENCES _user(id)
);

CREATE TABLE _evolution(
   idEvolution INT,
   weightEvolution DECIMAL(15,2) NOT NULL,
   heightEvolution DECIMAL(15,2) NOT NULL,
   created_at DATE NOT NULL,
   updated_at DATE,
   PRIMARY KEY(idEvolution)
);

CREATE TABLE objective(
   idObjective INT,
   weightObjective INT,
   heightObjective INT,
   PRIMARY KEY(idObjective)
);

CREATE TABLE _member(
   _member INT,
   userAge INT NOT NULL,
   dateSubscriberUser DATE NOT NULL,
   IMC VARCHAR(50),
   sizeUser INT NOT NULL,
   weightUser INT,
   PRIMARY KEY(_member),
   FOREIGN KEY(_member) REFERENCES _user(id)
);

CREATE TABLE _gym(
   idGym INT,
   nameGym VARCHAR(50),
   postalCodeGym INT NOT NULL,
   cityGym VARCHAR(50),
   comment TEXT,
   AdressGym VARCHAR(50) NOT NULL,
   admin INT NOT NULL,
   PRIMARY KEY(idGym),
   FOREIGN KEY(admin) REFERENCES _admin(admin)
);

CREATE TABLE _coach(
   idCoach INT,
   degree VARCHAR(50),
   experiment INT,
   id_coach INT NOT NULL,
   PRIMARY KEY(idCoach),
   UNIQUE(id_coach),
   FOREIGN KEY(id_coach) REFERENCES _user(id)
);

CREATE TABLE _favorise(
   idExercice INT,
   idBodyPart INT,
   PRIMARY KEY(idExercice, idBodyPart),
   FOREIGN KEY(idExercice) REFERENCES _exercises(idExercice),
   FOREIGN KEY(idBodyPart) REFERENCES _bodyPart(idBodyPart)
);

CREATE TABLE _allow(
   idExercice INT,
   idEquipment INT,
   PRIMARY KEY(idExercice, idEquipment),
   FOREIGN KEY(idExercice) REFERENCES _exercises(idExercice),
   FOREIGN KEY(idEquipment) REFERENCES _equipment(idEquipment)
);

CREATE TABLE _content(
   idExercice INT,
   idWorkout INT,
   repetition VARCHAR(50),
   serie VARCHAR(50),
   PRIMARY KEY(idExercice, idWorkout),
   FOREIGN KEY(idExercice) REFERENCES _exercises(idExercice),
   FOREIGN KEY(idWorkout) REFERENCES _workout(idWorkout)
);

CREATE TABLE _assigne(
   idEquipment INT,
   idGym INT,
   PRIMARY KEY(idEquipment, idGym),
   FOREIGN KEY(idEquipment) REFERENCES _equipment(idEquipment),
   FOREIGN KEY(idGym) REFERENCES _gym(idGym)
);

CREATE TABLE _define(
   idWorkout INT,
   idCoach INT NOT NULL,
   PRIMARY KEY(idWorkout),
   FOREIGN KEY(idWorkout) REFERENCES _workout(idWorkout),
   FOREIGN KEY(idCoach) REFERENCES _coach(idCoach)
);

CREATE TABLE _a(
   idGym INT,
   idOpening VARCHAR(50),
   PRIMARY KEY(idGym, idOpening),
   FOREIGN KEY(idGym) REFERENCES _gym(idGym),
   FOREIGN KEY(idOpening) REFERENCES _openGym(idOpening)
);

CREATE TABLE _open(
   idCoach INT,
   idAvaibilityCoach VARCHAR(50),
   PRIMARY KEY(idCoach, idAvaibilityCoach),
   FOREIGN KEY(idCoach) REFERENCES _coach(idCoach),
   FOREIGN KEY(idAvaibilityCoach) REFERENCES _avaibility_coach(idAvaibilityCoach)
);

CREATE TABLE _with(
   idWorkout INT,
   idDate VARCHAR(50),
   PRIMARY KEY(idWorkout, idDate),
   FOREIGN KEY(idWorkout) REFERENCES _workout(idWorkout),
   FOREIGN KEY(idDate) REFERENCES _booking(idDate)
);

CREATE TABLE _take(
   _member INT,
   idDate VARCHAR(50),
   PRIMARY KEY(_member, idDate),
   FOREIGN KEY(_member) REFERENCES _member(_member),
   FOREIGN KEY(idDate) REFERENCES _booking(idDate)
);

CREATE TABLE _adapte(
   idExercice INT,
   idType INT,
   PRIMARY KEY(idExercice, idType),
   FOREIGN KEY(idExercice) REFERENCES _exercises(idExercice),
   FOREIGN KEY(idType) REFERENCES _type(idType)
);

CREATE TABLE _have(
   _member INT,
   idType INT NOT NULL,
   PRIMARY KEY(_member),
   FOREIGN KEY(_member) REFERENCES _member(_member),
   FOREIGN KEY(idType) REFERENCES _type(idType)
);

CREATE TABLE _on(
   idGym INT,
   idAvaibilityCoach VARCHAR(50),
   PRIMARY KEY(idGym, idAvaibilityCoach),
   FOREIGN KEY(idGym) REFERENCES _gym(idGym),
   FOREIGN KEY(idAvaibilityCoach) REFERENCES _avaibility_coach(idAvaibilityCoach)
);

CREATE TABLE _into(
   idGym INT,
   idDate VARCHAR(50),
   PRIMARY KEY(idGym, idDate),
   FOREIGN KEY(idGym) REFERENCES _gym(idGym),
   FOREIGN KEY(idDate) REFERENCES _booking(idDate)
);

CREATE TABLE _reservation(
   idDate VARCHAR(50),
   idCoach INT NOT NULL,
   PRIMARY KEY(idDate),
   FOREIGN KEY(idDate) REFERENCES _booking(idDate),
   FOREIGN KEY(idCoach) REFERENCES _coach(idCoach)
);

CREATE TABLE _update(
   _member INT,
   idEvolution INT,
   PRIMARY KEY(_member, idEvolution),
   FOREIGN KEY(_member) REFERENCES _member(_member),
   FOREIGN KEY(idEvolution) REFERENCES _evolution(idEvolution)
);

CREATE TABLE _set(
   _member INT,
   idObjective INT,
   PRIMARY KEY(_member, idObjective),
   FOREIGN KEY(_member) REFERENCES _member(_member),
   FOREIGN KEY(idObjective) REFERENCES objective(idObjective)
);

CREATE TABLE user (
  id SERIAL PRIMARY KEY,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  gender VARCHAR(10),
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);
CREATE TABLE admin (
  admin_id SERIAL PRIMARY KEY,
  admin_type VARCHAR(50) NOT NULL,
  user_id INTEGER NOT NULL,
  FOREIGN KEY (user_id) REFERENCES user(id)
);

CREATE TABLE coach (
  coach_id SERIAL PRIMARY KEY,
  degree VARCHAR(50) NOT NULL,
  experience_years INTEGER NOT NULL,
  user_id INTEGER NOT NULL,
  FOREIGN KEY (user_id) REFERENCES user(id)
);
