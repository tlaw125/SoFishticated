USE sofishdb;
INSERT INTO shrimp VALUES(1,'orange eye blue tiger','Caridina cantonensis','caridina','easy',
 '68-75F', '1-1.5"', 'Images/OEBT.jpg','Orange eye blue tiger shrimp are very striking
 with their bright orange eyes opposite against their glowing blue bodies. These shrimp are
  relatively easy to care for as long as they have good water quality. They can breed with other 
  types of caradina shrimp. Even when breeding within their own species, some baby shrimp will be blonde 
  instead of blue like its parents. OEBTs are not picky eaters and will eat shrimp pellets, algae, and the 
  biofilm in an aquarium.');
INSERT INTO shrimp (commonName, sciName, type, careLvl, waterParams, maxSize, imagePath,  description) 
	VALUES('Fancy Black Tiger','Caridina cantonensis','caridina','easy',
 '68-75F', '1-1.5"', 'Images/fancyBlackTiger.jpg','Fancy black tiger shrimp are absolutely beautiful with their high
 contrasting colors of black and white along their bodies. They were created by breeding 
 crystal black shrimp with tiger shrimp, so each of these shrimp has its own unique pattern. 
 Fancy black tigers are pretty hardy and are easy to take care of. They just need good water 
 quality and enough food.');
    
ALTER TABLE shrimp ADD FULLTEXT(commonName);