--1. Academy databazasını yaradın - 2 bala
Create database ACADEMY
Use academy

--2. Groups(İd,Name) ve Students(İd,Name,Surname,Groupİd) table-ları yaradın(one-to-many), təkrar qrup adı əlavə etmək olmasın - 5 bal
Create Table Groups(
İd int identity Primary Key,
Name nvarchar(100)
)

--3. Students table-na Grade (int) kalonunu əlavə etmək - 3 bal
Create Table Students(
İd int identity,
Name nvarchar(100),
Surname nvarchar(100),
Groupİd int Foreign Key references Groups
)

--4. Groups table-na 3 data(P133,P229,P221), Students table-na 4 data əlavə edin(1 tələbə P229 qrupna, 3 tələbə P133   qrupuna aid olsun) - 5 bal
Set into @Groups.İd, @Groups.Name(
1 P133,
2 P229,
3 P221
)
--5. P133 qrupuna aid olan tələbələrin siyahisini gosterin - 10 bal
Select Name from Groups 

--6. Her qrupda neçə tələbə olduğunu göstərən siyahı çıxarmaq - 15 bal
Select Name from Groups Check Count()

--7. View yaratmaq - tələbə adını, qrupun adını-qrup kimi , tələbə soyadını, tələbənin balını göstərməli - 20 bal
Create view usv_CreateView
@Students.Name,
@Groups.Name,
@Students.Surname,
@Students.Grade
Begin 
As
Select Groups.İd FROM Groups



--8. Procedure yazmalı - göndərilən baldan yüksək bal alan tələbələrin siyahısını göstərməlidir - 20 bal

--9. Funksiya yazmalı - göndərilən qrup adina uyğun neçə tələbə olduğunu göstərməlidir - 20 bal






