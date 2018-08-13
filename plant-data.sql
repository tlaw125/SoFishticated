USE sofishdb;
INSERT INTO plants VALUES(1,'staurogyne repens','stem','easy','medium',
 'low', 'not required', 'Images/sRepens.jpg','Staurogyne repens are an easy-to-grow foreground plant. 
 They do not need CO2, but will grow faster and more compact with it. Like any other stem plant, 
 to propogate them, just cut a stem off and re-plant it into the substrate.');
INSERT INTO plants (name, type, careLvl, growth, light, co2, imagePath,  description) 
	VALUES('rotala sp green','stem','medium','fast', 'medium', 'recommended', 
    'Images/rotalaGreen.jpg', 'Rotala sp. Green is a light bright green stem plant that 
    can be used as foreground, midground, or background. Like any other stem plant, 
 to propogate them, just cut a stem off and re-plant it into the substrate.');
    
    ALTER TABLE plants ADD FULLTEXT(name);