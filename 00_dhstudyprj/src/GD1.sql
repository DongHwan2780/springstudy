DROP TABLE MENU_T;
CREATE TABLE MENU_T(
    MENU_NO NUMBER NOT NULL,
    BOB VARCHAR2(50 BYTE),
    GOOK VARCHAR2(50 BYTE),
    BANCHAN1 VARCHAR2(50 BYTE),
    BANCHAN2 VARCHAR2(50 BYTE)
);

DROP SEQUENCE MENU_SEQ;
CREATE SEQUENCE MENU_SEQ NOCACHE;

insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (1, 'Volkswagen', 'Turquoise', 'Rato', 'Kristoffer');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (2, 'Honda', 'Mauv', 'Lianyi', 'Kinsley');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (3, 'Plymouth', 'Blue', 'Dalarik', 'Mathilda');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (4, 'Mitsubishi', 'Puce', 'Mafa', 'Bryana');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (5, 'Nissan', 'Maroon', 'Dmytrivka', 'Aldon');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (6, 'Ford', 'Teal', 'Loo', 'Rafaello');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (7, 'Volvo', 'Turquoise', 'Liulin', 'Lana');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (8, 'Jaguar', 'Turquoise', 'Sibut', 'Artur');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (9, 'Dodge', 'Turquoise', 'Kryevidh', 'Barney');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (10, 'Subaru', 'Blue', 'Cengjia', 'Emmy');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (11, 'Chrysler', 'Green', 'Briceni', 'Marv');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (12, 'Toyota', 'Maroon', 'Koblain', 'Berkley');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (13, 'Saab', 'Pink', 'Thymian?', 'Jobina');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (14, 'Buick', 'Maroon', 'G?teborg', 'Kimberli');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (15, 'Dodge', 'Maroon', 'S?o Miguel do Araguaia', 'Conny');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (16, 'Volkswagen', 'Pink', 'Sasebo', 'Kimbra');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (17, 'Dodge', 'Pink', 'Harper', 'Rutherford');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (18, 'Porsche', 'Violet', 'San Rafael del Sur', 'Robinet');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (19, 'Bentley', 'Mauv', 'Montel?bano', 'Katuscha');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (20, 'Plymouth', 'Yellow', 'Dongxiaokou', 'Shepard');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (21, 'Ford', 'Maroon', 'Retorta', 'Christye');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (22, 'Chevrolet', 'Pink', 'San Bernardino', 'Griswold');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (23, 'Mazda', 'Pink', 'Ayo', 'Erhard');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (24, 'Toyota', 'Puce', 'Gaojiabu', 'Mead');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (25, 'Nissan', 'Pink', 'Al Qubbah', 'Margy');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (26, 'Mercedes-Benz', 'Red', 'Dinjo', 'Erna');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (27, 'Acura', 'Goldenrod', '?yios Ye?ryios', 'Mychal');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (28, 'Spyker', 'Purple', 'Porto Seguro', 'Orsa');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (29, 'Chevrolet', 'Teal', 'Gludug', 'Marjy');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (30, 'Suzuki', 'Puce', 'Longuita', 'Otha');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (31, 'Kia', 'Maroon', 'Were ?lu', 'Zachariah');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (32, 'Hyundai', 'Blue', 'Sampaloc', 'Urbanus');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (33, 'Honda', 'Fuscia', 'Guifeng', 'Blinny');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (34, 'BMW', 'Crimson', 'Chy?ky', 'Abba');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (35, 'Dodge', 'Turquoise', 'S?o Tom?', 'Sterne');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (36, 'Ford', 'Turquoise', 'Erenhot', 'Archibold');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (37, 'Nissan', 'Aquamarine', 'Barras', 'Ab');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (38, 'Mercury', 'Turquoise', 'Koson Shahri', 'Myrtia');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (39, 'Dodge', 'Purple', 'Tanjung', 'Anders');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (40, 'Acura', 'Khaki', 'Nicoya', 'Dyan');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (41, 'Buick', 'Khaki', 'Mar?dah', 'Fred');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (42, 'Mercedes-Benz', 'Teal', 'Cali', 'Meagan');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (43, 'Mercedes-Benz', 'Puce', 'Petrolina', 'Cornie');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (44, 'Bugatti', 'Yellow', 'Berat', 'Kellby');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (45, 'Land Rover', 'Aquamarine', 'Tullinge', 'Christin');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (46, 'Ford', 'Puce', 'Koronadal', 'Robinson');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (47, 'Mazda', 'Indigo', 'Rychtal', 'Daisey');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (48, 'Mazda', 'Mauv', 'Tunguang', 'Mikel');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (49, 'Kia', 'Teal', 'Osielec', 'Beck');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (50, 'GMC', 'Mauv', 'Arauquita', 'Morley');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (51, 'Chevrolet', 'Khaki', 'Qingzhou', 'Wrennie');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (52, 'Mercedes-Benz', 'Maroon', 'Datong', 'Demetri');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (53, 'Volkswagen', 'Fuscia', 'De la Paz', 'Corrie');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (54, 'Lexus', 'Crimson', 'Povenets', 'Aviva');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (55, 'Chevrolet', 'Yellow', 'Mukun', 'Tedd');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (56, 'Toyota', 'Teal', 'Zaporizhzhya', 'Deirdre');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (57, 'Honda', 'Orange', 'Darkton', 'Charmane');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (58, 'Chrysler', 'Purple', 'Liloy', 'Tiffy');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (59, 'Saab', 'Turquoise', 'Koffiefontein', 'Valery');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (60, 'Mazda', 'Orange', 'Bartsrashen', 'Hanni');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (61, 'Fillmore', 'Goldenrod', 'Middelburg', 'Paolina');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (62, 'Hyundai', 'Puce', 'Kinshasa', 'Ferrell');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (63, 'Chevrolet', 'Violet', 'Tegalbuleud', 'Juliet');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (64, 'Lotus', 'Pink', 'Chengnan', 'Des');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (65, 'Chevrolet', 'Pink', 'New York City', 'Frieda');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (66, 'BMW', 'Orange', 'Chishmy', 'Enrique');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (67, 'Mercedes-Benz', 'Goldenrod', 'Tabuk', 'Humbert');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (68, 'Chevrolet', 'Blue', 'Caridad', 'Laurene');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (69, 'Hyundai', 'Khaki', 'Maroantsetra', 'Stepha');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (70, 'Lincoln', 'Green', 'Wat Sing', 'Nat');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (71, 'GMC', 'Maroon', 'Bacungan', 'Pearline');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (72, 'Toyota', 'Maroon', 'Suining', 'Kerianne');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (73, 'Ford', 'Blue', 'Tsibulev', 'Tommie');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (74, 'Subaru', 'Khaki', 'Caqu', 'Gregoor');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (75, 'Chevrolet', 'Blue', 'Marija Bistrica', 'Lorrie');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (76, 'Toyota', 'Maroon', 'He?manova Hu?', 'Weylin');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (77, 'Honda', 'Pink', 'Llano de Piedra', 'Nada');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (78, 'Hyundai', 'Fuscia', 'Trondheim', 'Tabbatha');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (79, 'Lexus', 'Mauv', 'Courtaboeuf', 'Halsy');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (80, 'Bentley', 'Indigo', 'Bacun', 'Olva');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (81, 'Mitsubishi', 'Crimson', 'Wola Jachowa', 'Cynthia');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (82, 'Lincoln', 'Yellow', 'Wufeng', 'Sigfrid');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (83, 'GMC', 'Goldenrod', 'V?rzea da Serra', 'Giulia');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (84, 'Ford', 'Aquamarine', 'V?stra Fr?lunda', 'Margi');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (85, 'Mercedes-Benz', 'Yellow', 'Qal��ah-ye Na��?m', 'Kizzie');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (86, 'Ford', 'Turquoise', 'Baokou', 'Joelle');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (87, 'Acura', 'Yellow', 'Az Zubayd?t', 'Riley');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (88, 'Ford', 'Turquoise', 'Olsz?wka', 'Karlens');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (89, 'Maserati', 'Violet', 'S?o Sebasti?o do Ca?', 'Aurora');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (90, 'Toyota', 'Yellow', 'Kotayk��', 'Goober');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (91, 'Plymouth', 'Puce', 'Zhuting', 'Cloris');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (92, 'Pontiac', 'Red', 'Kazinka', 'Gretel');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (93, 'Pontiac', 'Turquoise', 'Calancuasan Norte', 'Wernher');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (94, 'Jaguar', 'Violet', 'Tifni', 'Boone');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (95, 'Chrysler', 'Purple', 'Tumba', 'Correy');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (96, 'Mazda', 'Crimson', 'Kadengan', 'Irita');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (97, 'Chevrolet', 'Puce', 'Sezimovo ?st?', 'Margaretha');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (98, 'Chevrolet', 'Teal', 'Shangjie', 'Bordy');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (99, 'Infiniti', 'Red', 'Gourcy', 'Kin');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (100, 'Chevrolet', 'Aquamarine', 'San Francisco', 'Henrietta');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (101, 'GMC', 'Crimson', 'Al Qan??ir al Khayr?yah', 'Latisha');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (102, 'Mazda', 'Purple', 'Longtian', 'Isa');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (103, 'Mercedes-Benz', 'Crimson', 'Simpang', 'Bennie');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (104, 'Land Rover', 'Fuscia', 'Nong Bua', 'Aymer');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (105, 'GMC', 'Khaki', 'Volovo', 'Elyssa');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (106, 'Lincoln', 'Goldenrod', 'Santa Monica', 'Aguie');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (107, 'Ford', 'Maroon', 'Belverde', 'Titus');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (108, 'Infiniti', 'Crimson', 'Fenshui', 'Cortney');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (109, 'Lexus', 'Goldenrod', 'Akaki', 'Frederica');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (110, 'Rolls-Royce', 'Pink', 'Silihe', 'Yorgo');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (111, 'Buick', 'Crimson', 'Cachoeiras de Macacu', 'Milzie');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (112, 'GMC', 'Pink', '?awr al B??ah', 'Tammie');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (113, 'Chevrolet', 'Goldenrod', 'Kapsan-?p', 'Myrna');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (114, 'Maserati', 'Khaki', 'Haninge', 'Petronille');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (115, 'Land Rover', 'Purple', 'Jinjiahe', 'Rustin');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (116, 'Ford', 'Crimson', 'Sestroretsk', 'Marmaduke');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (117, 'Honda', 'Mauv', 'Kh?new?l', 'Camella');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (118, 'Buick', 'Fuscia', 'Lapi', 'Bernard');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (119, 'Audi', 'Teal', 'Shakhta', 'Gilligan');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (120, 'Dodge', 'Aquamarine', 'Gaozhuang', 'Warde');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (121, 'Suzuki', 'Indigo', 'Kypr?nos', 'Asa');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (122, 'Ford', 'Crimson', 'Xianlong', 'Muhammad');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (123, 'Dodge', 'Blue', 'Alhambra', 'Andeee');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (124, 'Spyker', 'Goldenrod', 'Castlemartyr', 'Courtney');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (125, 'Pontiac', 'Khaki', 'Palaiseau', 'Aveline');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (126, 'Ford', 'Crimson', 'Tol?', 'Linette');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (127, 'Jaguar', 'Puce', 'Slobodnica', 'Eugenia');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (128, 'Ford', 'Puce', 'Donggaocun', 'Melantha');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (129, 'Chrysler', 'Fuscia', 'Date', 'Jobye');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (130, 'Honda', 'Pink', 'Dondon', 'Gwenette');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (131, 'Maserati', 'Pink', 'Belalcazar', 'Algernon');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (132, 'Mazda', 'Mauv', 'Leninsk', 'Bernard');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (133, 'Toyota', 'Pink', 'Guanmian', 'Mendel');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (134, 'BMW', 'Aquamarine', 'Nizhniye Achaluki', 'Daune');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (135, 'Plymouth', 'Red', 'Tiangu?', 'Roderigo');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (136, 'Mazda', 'Khaki', 'Agrelo', 'Bertrando');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (137, 'Volkswagen', 'Turquoise', 'Gao��an', 'Abagail');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (138, 'Nissan', 'Green', 'Tonantins', 'Fawne');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (139, 'Infiniti', 'Blue', 'Dongtuan', 'Emmit');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (140, 'Volvo', 'Crimson', 'Lyuboml��', 'Sidonnie');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (141, 'Pontiac', 'Orange', 'Hengshi', 'Brande');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (142, 'Pontiac', 'Teal', 'Ho��oby', 'Natalya');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (143, 'Ford', 'Blue', 'Satovcha', 'Kerk');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (144, 'Lexus', 'Indigo', 'Krajan Jabungcandi', 'Elli');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (145, 'GMC', 'Blue', 'Francistown', 'Drucie');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (146, 'Cadillac', 'Red', 'Salamrejo', 'Jordan');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (147, 'Pontiac', 'Turquoise', 'Gaspar', 'Tiebold');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (148, 'Subaru', 'Maroon', 'Liulin', 'Charo');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (149, 'Mercedes-Benz', 'Purple', 'Changning', 'Walliw');
insert into MENU_T (MENU_NO, BOB, GOOK, BANCHAN1, BANCHAN2) values (150, 'Honda', 'Orange', 'Cabitan', 'Sibelle');
commit;