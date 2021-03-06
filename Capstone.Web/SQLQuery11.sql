/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [ItinId]
      ,[UserId]
      ,[StartDate]
      ,[ItinName]
  FROM [Project].[dbo].[Itinerary]

  CREATE TABLE [dbo].[Itinerary_Stops]

 (
	[ItinId] int NOT NULL,
	[PlaceId] varchar(200) NOT NULL,
	[Order] INT NOT NULL,

	CONSTRAINT pk_Itinerary_Stops PRIMARY KEY (PlaceId, ItinId),
	CONSTRAINT fk_Itinerary_Stops_Itinerary FOREIGN KEY (ItinId) REFERENCES Itinerary(ItinId)

 );
ALTER TABLE Itinerary_Stops
ADD Name VARCHAR(200) NOT NULL, 
Address VARCHAR(200) NOT NULL, 
Latitude FLOAT NOT NULL, 
Longitude FLOAT NOT NULL, 
Category VARCHAR(50) NOT NULL;