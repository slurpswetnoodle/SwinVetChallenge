/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

if '$(LoadTestData)' = 'true'

Begin

delete from Treatment;
delete from Pet;
delete from [Procedure];
delete from [Owner];

insert into [Owner](OwnerId, Surname, GivenName, Phone) values
(1, 'Sinatra', 'Frank', 400111222),
(2, 'Ellington', 'Duke', 400222333),
(3, 'Fitzgerald', 'Ella', 400333444)

insert into [Procedure](ProcId, [Description], Price) values
(01, 'Rabies Vaccination', 24.00),
(10, 'Examine and Treat Wound', 30.00),
(05, 'Heart Worm Test', 25.00),
(08, 'Tetanus Vaccination', 17.00)

insert into Pet(PetId, PetName, [Type], OwnerId) values
(1, 'Buster', 'Dog', 1),
(2, 'Fluffy', 'Cat', 1),
(3, 'Stew', 'Rabbit', 2),
(4, 'Buster', 'Dog', 3),
(5, 'Pooper', 'Dog', 3)

insert into Treatment(TreatmentId, [Date], Notes, PetId, OwnerId, ProcId, PricePaid) values
(1, '2017-06-17', 'Routin Vaccination', 1, 1, 01, 22.00),
(2, '2018-05-15', 'Booster Shot', 1, 1, 01, 24.00),
(3, '2018-05-10', 'Wounds sustained in apparent cat fight.', 2, 1, 10, 30.00),
(4, '2018-05-10', 'Wounds sustained during attemot to cook the stew.', 3, 2, 10, 30.00),
(5, '2018-05-18', 'Routine Test', 5, 3, 05, 25.00)

end;
