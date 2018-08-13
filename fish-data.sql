USE sofishdb;
INSERT INTO fish VALUES(1,'neon tetra','paracheirodon innesi', 'tropical', 'characidae','easy',
 'peaceful', '68-78F', '1.25"','https://www.goodfreephotos.com/albums/animals/fish/neon-tetra.jpg','egg-scatterer',
 'Males are thinner with a straight blue line. Females are plumper with a more bent blue line.',
 'Neon tetras are an extremely popular fish in the aquarium hobby.
 They are small tropical fish that are easy to care for and are very affordable!
 Their bright blue and red colors are sure to shine through any aquarium. 
 They are a very peaceful fish that can get along with many other species 
 of fish in the hobby, but are most comfortable when kept in schools of at 
 least six of their own. Neon tetras are omnivorous and will readily eat a 
 variety of flakes or frozen/live food that is offered to them.');
INSERT INTO fish (commonName, sciName, type, family, careLvl, temperament, waterParams, maxSize, imagePath, breeding, genderID, description) 
	VALUES('angelfish','pterophyllum', 'tropical', 'cichlidae','medium', 
	'semi-aggressive', '75-82F', '6"','Images/angelfish.jpg','egg-layer',
	'The best way to determine the sex of an angelfish is by looking at their spawning tubes. 
    Males will have slender and pointy tubes while female tubes will look rounder and stubbier.', 
	'Freshwater angelfish are a graceful type of cichlid that originate from South
    America. These tropical fish prefer slightly acidic soft water. When still young, angelfish
     will get along, but as they reach sexual maturity they become very territorial. 
     They will start lunging and pecking at one another, so make sure each angelfish has enough space 
     in the tank and that there are plants, rocks, wood, or other decoration that will create visual
      barriers to reduce aggression. Angelfish are omnivores and will readily eat any food that is offered to them, 
      but prefer frozen/live foods like bloodworms and brine shrimp.');
      
INSERT INTO fish (commonName, sciName, type, family, careLvl, temperament, waterParams, maxSize, imagePath, breeding, genderID, description)
	VALUES('Electric Blue Ram','Mikrogeophagus ramirezi', 'tropical', 'cichlidae', 'medium', 
    'non-aggressive', '76-82F', '3"', 'Images/electricBlueRam.jpg', 'egg-layer', 'Males are usually large
    r and more slender than females. The first two dorsal ray and ventral fins on
    males will be elongated. The back edge of the dorsal fin will also be pointed
    on a male, while rounded on a female. Females will be smaller and exhibit a 
    rounder body shape', 'Electric Blue Rams are a color morph of the German Blue
    Ram that exhibits a vibrant blue color. They are very peaceful fish when given
    the proper amount of hiding places, such as rocks, caves, and wood. Although,
    pairs may become aggressive if they are protected their young. Rams should be
    kept in slightly acidic water, 5.0-6.8. They are omnivorous and  will accept 
    a variety of food, including flake, frozen, freeze dried, and live food.');
    
INSERT INTO fish (commonName, sciName, type, family, careLvl, temperament, waterParams, maxSize, imagePath, breeding, genderID, description)
	VALUES('Rummynose Tetra','Hemigrammus bleheri', 'tropical', 'Characidae', 
    'easy-medium', 'non-aggressive', '75-80F', '2"', 
    'Images/rummynoseTetra.jpg', 'egg-scatterer', 'Difficult to determine, but 
    females may be rounder', 'The Rummynose tetra is a very peaceful fish that do
    well in community tanks in groups of 6 or more. Although one of the best schooling
    fish, they are sensitive to sudden water parameter fluctuations. As a result,
    take extra time acclimating these fish and try not to do large water changes.
    There are 3 species of Rummynose tetras, and they are distinguished by the 
    color patterns on the head and tail . Hemigrammus bleheri, the Common Rummynose 
    tetra, is the species most commonly found in the market. Being omnivorous, 
    they will accept a variety of food, including flake, frozen, freeze dried,
    and live food.'); 
    
INSERT INTO fish (commonName, sciName, type,  family, careLvl, temperament, waterParams, maxSize, imagePath, breeding, genderID, description)
	VALUES('Cardinal Tetra','Paracheirodon axelrodi', 'tropical', 'Characidae',
    'medium-hard', 'non-aggressive', '79-82F', '1.5"', 'Images/cardinalTetra.jpg',
    'egg-scatterer', 'Males are more slender, and females are a little larger and 
    rounder. Mature males will also have a bony pelvic fin hook. ', 'Cardinal Tetras
    are a very popular choice for community tanks due to their tight schooling and
    friendly nature. It is recommended to keep them in schools of 6 or more and 
    in slightly acidic waters. Cardinals do not handle stress, such as water 
    parameter fluctuations and transport, well. They are recommended are established
    tanks with stable water parameters. Once acclimated to a tank they are as hardy 
    as can be. Being omnivorous, Cardinal tetras will accept a wide variety of food,
    including flake, frozen, freeze dried, and live food. Cardinal tetras may be 
    mistaken for Neon Tetras because they share similar color patterns. The main 
    difference between these two species is that the red coloration on a Cardinal
    tetra will extend from head to tail, while the red on a Neon tetra extends 
    from the midbody to the tail.'); 
    
INSERT INTO fish (commonName, sciName, type, family, careLvl, temperament, waterParams, maxSize, imagePath, breeding, genderID, description)
	VALUES('Blue King Tetra','Boehlkea fredcochui', 'tropical', 'Characidae', 
    'easy', 'non-aggressive', '74-81F', '2"', 'Images/blueKingTetra.jpg', 
    'egg-scatterer', ' Males will have more vibrant colors compared to the 
    females. Females tend to be larger and rounder in body shape. ', 'Blue King 
    tetras are a very active shoaling fish and are best kept in school of 6 or more.
    They have a subtle blue color and may show a tint of pink near the anal fin. 
    In a proper sized and decorated tank, Blue tetras are peaceful, but when stressed,
    they can be nippy towards other fish in the tank, especially those that have 
    long fins. It is recommended to not keep Blue tetras with slow swimming species
    or with species that are easily stressed by fast swimming tank mates. Blue King 
    tetras are herbivorous and do well on a vegetable based flake food. ');

INSERT INTO fish (commonName, sciName, type, family, careLvl, temperament, waterParams, maxSize, imagePath, breeding, genderID, description)
	VALUES('Black Skirt Tetra','Gymnocorymbus ternetzi', 'tropical', 
	'Characidae', 'easy', 'semi-aggressive', '68-79F', '6"', 'Images/blackSkirt.jpg',
    'egg-scatterer', 'Females are usually larger than males. Males have a narrow 
    and more pointed dorsal fin.', 'Black Skirt Tetras are schooling fish found 
    from the regions of South America. They are a hardy, freshwater fish that adapts
    well to water condition changes making them good for beginners. Black Skirt 
    Tetras are noted by their laterally compressed silver body. In addition, they
    have two or three vertical bands on the body while their fins are mostly black.
    Their fins give an appearance as though it is wearing a "skirt" with most of
    its mass on the bottom half of their body. The Black Skirt Tetra is a good addition 
    for community tanks and should be kept in a school of 6. If they are alone, the 
    Black Skirt Tetra may become aggressive. They are also known to nip at fish with
    long fins, so it is best to keep them separate from the Black Skirt Tetra. 
    Since they are omnivorous, Black Skirt Tetras are not picky eaters and will 
    eat a variety of feed from flakes to live food. '); 

INSERT INTO fish (commonName, sciName, type, family, careLvl, temperament, waterParams, maxSize, imagePath, breeding, genderID, description)
	VALUES('White Skirt Tetra', 'Gymnocorymbus ternetzi','tropical', 'Characidae', 
    'easy', 'semi-aggressive', '68-79F', '6"', 'Images/whiteSkirt.jpg', 'egg-scatterer', 'Females
    are usually larger than males. Males have a narrow and more pointed dorsal fin',
    'The White Skirt Tetra is a color variation developed from the Black Skirt Tetra.
    They have the same shape as the Black Skirt Tetra but lacks the black bands and 
    is white in color with fins appearing translucent. These fish can grow from a 
    few centimeters to a few inches. Care requirements are similar to the Black Skirt
    Tetra. The White Skirt Tetra are omnivores and can be fed live, frozen or dried
    food. As a hardy fish, they are undemanding and are accustomed to wide ranges
    of conditions. To discourage fin nipping, the White Skirt Tetra should be kept
    in a school of 6 since they will be unhappy and aggressive if alone or in small
    groups. They are active swimmers and skilled jumpers, so the tank should be 
    securely covered. '); 

INSERT INTO fish (commonName, sciName, type, family, careLvl, temperament, waterParams, maxSize, imagePath, breeding, genderID, description)
	VALUES('Harlequin rasbora','Trigonostigma heteromorpha','tropical', 
    'Cyprinidae', 'easy', 'non-aggressive', '75-81F', '2"', 'Images/harlequinRasbora.jpg',
    'egg-layer', 'It is difficult to identify the gender of harlequin rasbora, but 
    females tend to be rounder and males tend to appear slimmer and brighter.', 'If
    you\'re looking for a type of fish known for its schooling abilities, look no further!
    A group of harlequin rasboras will school elegantly throughout a tank, showing off
    their bright red-orange fins that contrast nicely with the dark black triangular 
    patch on the backside of their body. They are very peaceful and will go well in a
    community tank. These guys are known to be a little skittish until comfortable in
    their environment, so they may or may not eat for a day or two in a new tank. They
    are most comfortable in a group of 6 or more. Harlequins prefer soft and acidic water,
    but can adapt to other parameters, making them a generally easy fish as they are 
    not very demanding. They are omnivores, so having a diet of both veggies and protein
    is important for proper growth. ');

INSERT INTO fish (commonName, sciName, type, family, careLvl, temperament, waterParams, maxSize, imagePath, breeding, genderID, description)
	VALUES('Bristlenose Pleco','Ancistrus sp.','tropical', 'loricariidae', 'easy',
    'peaceful', '73-80F', '4.7-5.9"', 'Images/BNpleco.JPG', 'egg-layer', 'Males 
    grow larger than females, usually reaching the maximum size of 5.9 inches , 
    while females grow up to 4.7 inches. Males also possess tentacles (bristles) 
    on their heads, while females do not.', 'The bristlenose pleco, also known as
    the bushynose pleco, is a great fish to have if you are interested in owning a
    pleco but don\'t own a large tank. They only reach a max size of 6 inches while
    common plecos can grow over one foot! There\'s also a huge variety of species 
    to select from, with over 70 found so far. These bottom dwellers are known as
    algae eaters and will be able to clear some of the algae problems in the tank.
    However, they usually will not go after the tough types of algae, like green 
    hair or green spot algae. They should also not have only the algae in the tank
    to rely on as their food main source of food. They can be fed vegetables like
    zucchini, green beans, and spinach. They should also be getting some protein 
    their diets and not just plant-based foods. Bristlenose plecos are also very 
    peaceful, and will definitely not go trying to attack your other fish. They 
    can be territorial at times with other bristlenose plecos though, so make sure
    to have enough hiding spots or caves in the tank for them to rest in. Driftwood
    is very important for these plecos. Not only does it provide them more places
    to seclude themselves in, but they can eat the wood itself, which is said to 
    help improve their digestive system. ');

INSERT INTO fish (commonName, sciName, type, family, careLvl, temperament, waterParams, maxSize, imagePath, breeding, genderID, description)
	VALUES('Candy Cane Tetra','Hyphessobrycon bentosi','tropical', 'Characidae', 
    'easy', 'peaceful', '72-82F', '2"', 'Images/candyCaneTetra.jpg', 'egg-scatterer',
    'Males tend to have larger fins and are generally larger than females.', 
    'The candy cane tetra is one of the larger-sized tetras, reaching a length up
    to 2". It gets its name from its colors of red, pink, and white so if you\'re 
    looking to add some red into your aquarium, keep an eye out for them! They 
    are most comfortable in a group of 6 or more and prefer dimly lit and well-planted
    aquariums. Keeping them in a school also reduces any fin-nipping behaviour. 
    They favor soft and acidic water, but are adaptable to other parameters. Like
    other tetras, candy cane tetras are omnivorous and should be given both veggies
    and protein in their diet. ');

INSERT INTO fish (commonName, sciName, type, family, careLvl, temperament, waterParams, maxSize, imagePath, breeding, genderID, description)
	VALUES('Smudge Spot Cory','corydoras similis','tropical', 'Callichthyidae', 
    'easy', 'peaceful', '70-81F', '2.4"', 'Images/corydorasSimilis.jpg', 
    'egg-layer', 'Females are rounder and generally larger than males.', 
    'Corydoras are the cute little catfish of the freshwater community. They are 
    scaleless bottom-feeders that constantly dig their mouths along the substrate 
    of tanks looking for food that fell from the top. The smudge spot cory in part
    icular has a round nose and spots from its head to mid body, where it then 
    fades into a solid dark green color toward the end of the tail. They are a 
    schooling fish and should be kept in a group of 6 or more. Corydoras are omnivores
    and need both veggies and protein. To ensure that food reaches the bottom of 
    the tank for them, think about investing in some pellet foods in case all the
    flake food constantly gets eaten up by the rest of the fish in the tank. 
    Corydoras can be sensitive to changes to the tank and should only be added to 
    established aquariums. They are said to be the first fish to show signs of
    distress when something is wrong in the tank. Corydoras are sensitive to copper,
    so if you ever medicate a tank with corydoras in them, make sure there is no 
    copper in the medicine. ');


INSERT INTO fish (commonName, sciName, type, family, careLvl, temperament, waterParams, maxSize, imagePath, breeding, genderID, description)
	VALUES('Bronze Cory','corydoras aenus','tropical', 'Callichthyidae', 
	'easy', 'peaceful', '70-81F', '2.5"', 'Images/bronzeCory.jpg', 
	'egg-layer', 'Females are rounder and generally larger than males.', 
	'Corydoras are the cute little catfish of the freshwater community. 
	They are scaleless bottom-feeders that constantly dig their mouths 
	along the substrate of tanks looking for food that fell from the top.
	The bronze cory in particular has a round nose and a bronze body with
	a dark emerald stripe going down the middle of its body. They are a schooling 
    fish and should be kept in a group of 6 or more. Corydoras are omnivores and 
    need both veggies and protein. To ensure that food reaches the bottom of the 
    tank for them, think about investing in some pellet foods in case all the flake
    food constantly gets eaten up by the rest of the fish in the tank. Corydoras
    can be sensitive to changes to the tank and should only be added to established
    aquariums. They are said to be the first fish to show signs of distress when 
    something is wrong in the tank. Corydoras are sensitive to copper, so if you 
    ever medicate a tank with corydoras in them, make sure there is no copper in 
    the medicine. ');

INSERT INTO fish (commonName, sciName, type, family, careLvl, temperament, waterParams, maxSize, imagePath, breeding, genderID, description)
	VALUES('Peppered Cory','corydoras paleatus','tropical', 'Callichthyidae', 
    'easy', 'peaceful', '71-79F', '2.5"', 'Images/pepperedCory.jpg', 'egg-layer',
    'Females are rounder and generally larger than males.', 'Corydoras are the 
    cute little catfish of the freshwater community. They are scaleless bottom-
    feeders that constantly dig their mouths along the substrate of tanks looking
    for food that fell from the top. The peppered cory in particular has a beige 
    body with black spots speckled around. It will sometimes have a green shine 
    to it. They are a schooling fish and should be kept in a group of 6 or more. 
    Corydoras are omnivores and need both veggies and protein. To ensure that 
    food reaches the bottom of the tank for them, think about investing in some 
    pellet foods in case all the flake food constantly gets eaten up by the rest 
    of the fish in the tank. Corydoras can be sensitive to changes to the tank
    and should only be added to established aquariums. They are said to be the 
    first fish to show signs of distress when something is wrong in the tank. 
    Corydoras are sensitive to copper, so if you ever medicate a tank with 
    corydoras in them, make sure there is no copper in the medicine. ');

INSERT INTO fish (commonName, sciName, type, family, careLvl, temperament, waterParams, maxSize, imagePath, breeding, genderID, description)
	VALUES('Panda Cory','corydoras panda','tropical', 'Callichthyidae', 'easy', 
    'peaceful', '70-79F', '2"', 'Images/pandaCory.jpg', 'egg-layer', 'Females are
    rounder and generally larger than males.', 'Corydoras are the cute little 
    catfish of the freshwater community. They are scaleless bottom-feeders that 
    constantly dig their mouths along the substrate of tanks looking for food that
    fell from the top. The panda cory in particular has an off-white colored body
    with black marks on its eyes and the lower end of its body, as well as a black
    dorsal fin. They are a schooling fish and should be kept in a group of 6 or
    more. Corydoras are omnivores and need both veggies and protein. To ensure 
    that food reaches the bottom of the tank for them, think about investing in 
    some pellet foods in case all the flake food constantly gets eaten up by the
    rest of the fish in the tank. Corydoras can be sensitive to changes to the 
    tank and should only be added to established aquariums. They are said to be 
    the first fish to show signs of distress when something is wrong in the tank.
    Corydoras are sensitive to copper, so if you ever medicate a tank with 
    corydoras in them, make sure there is no copper in the medicine. ');

INSERT INTO fish (commonName, sciName, type, family, careLvl, temperament, waterParams, maxSize, imagePath, breeding, genderID, description)
	VALUES('Emerald Dwarf Rasbora','Danio erythromicron','tropical', 'Cyprinidae',
    'easy', 'peaceful', '70-77F', '1-1.5"', 'Images/emeraldDwarfRasbora.jpg', 
    'egg-layer', 'Females are generally larger, while males are smaller and more
    brightly colored with red or orange fins.', 'The emerald dwarf rasbora is an
    excellent choice of fish for a nano tank! This tiny fish only grows to a max 
    of 1.5". It is full of color, with bars of turquoise running down along its 
    body and bright red-orange fins on the males. They are most comfortable in a
    group in a well-planted aquarium that provides many hiding spaces for them.
    They can be shy, but the more of them there are in the tank, the more they 
    feel comfortable coming out. Emerald dwarf rasboras are very peaceful and 
    can live alongside other peaceful fish and even shrimp! However, they will 
    eat baby shrimp so if you\'re trying to increase your shrimp colony, put them
    in separate tanks. They are omnivorous and will gladly eat flake or pellet 
    foods, but prefer frozen and live foods.');

INSERT INTO fish (commonName, sciName, type, family, careLvl, temperament, waterParams, maxSize, imagePath, breeding, genderID, description)
	VALUES('silvertip tetra','Hasemania nana','tropical', 'Characidae', 'easy',
    'peaceful', '70-82F', '2"', 'Images/silvertip.jpg', 'egg-scatterer', 'Males 
    are more slender and have an orange color while females are rounder and yellow
    .', 'Silvertip tetras are a stunning fish with shining silver tips at the 
    corners of their tails.They are a peaceful species of fish, but can get nippy
    when stressed. These tetras are fast swimmers and are a shoaling fish and 
    should be kept in a group of 6 or more. They are a yellow-orange color that 
    fades to black on the tail fin. Silvertips are omnivorous and will gladly 
    accept whatever you feed them, whether it be flakes or frozen/live food. ');

INSERT INTO fish (commonName, sciName, type, family, careLvl, temperament, waterParams, maxSize, imagePath, breeding, genderID, description)
	VALUES('Siamese algae eater','Crossocheilus oblongus','tropical', 'Cyprinidae'
    , 'easy', 'semi-aggressive', '72-80F', '3-5"', 'Images/siameseAlgaeEater.jpg',
    'egg-scatterer', 'Very difficult to differentiate males and females. Breeding
    in captivity is difficult and rarely done. ', 'Siamese algae eaters are a
    great edition to a tank. They are wonderful at clearing a tank that is 
    overgrown with hair or string algae. Before buying them, keep in mind that 
    they are sold as babies and will grow quite large. Plan ahead and do not 
    purchase too many. Larger individuals have a tendency to chase other fish 
    around, so avoid housing them with fish that stress easily. Siamese algae
    eaters are commonly mistaken with Flying Foxes/Chinese Algae 
    Eater(Epalzeorhynchos kalopterus) because they share very similar body 
    features. Do your best to avoid mistakenly buying a Flying Fox because they 
    can be aggressive to tankmates and do not help with algae control. The best 
    method to tell these to specials apart is by looking at the black line that 
    runs along both their bodies. In Siamese algae eaters the black stripe will 
    start at the head and go all the way to the end of that tail fin. In Flying 
    Foxes/Chinese algae eaters, the black stripe will start at the head and end 
    before the tail fin begins. The second way to tell these two species apart is 
    to look at the mouth. Siamese algae eater will have 1 pair of barbells 
    (whiskers), while Flying Foxes will have 2 pairs. They are omnivore and are 
    not picky eaters. Siamese algae eaters are a great edition to a tank\'s clean
    up crew! ');

INSERT INTO fish (commonName, sciName, type, family, careLvl, temperament, waterParams, maxSize, imagePath, breeding, genderID, description)
	VALUES('Platy','Xiphophorus maculatus','tropical', 'Poeciliidae', 'easy', 
    'peaceful', '69-78F', '1-2"', 'Images/platy.jpg', 'livebearer', 'There are 
    two primary ways of distinguishing gender. The first way is through its shape as
    females tend to be longer and have a wider stomach than males. The second and 
    more accurate way is to distinguish the shape of their fins. Both genders will 
    have two fins protruding from their underside. The one that\'s closer to the rear 
    is called the gonopodium. For females, the gonopodium will be in the shape of a 
    fan while in males, it\'ll be long, flat, and pointed.', 'Despite the large variety
    of Platys, they tend to necessitate similar care. Here, we\'ll focus on one type 
    of Platy, the Red Wag Platy. Red Wag Platys are small fish that have a solid red 
    or orange body with a dark tail, dorsal fin, and gonopodium. They are peaceful,
    hardy, and active fish that typically dwell in the middle of the tank. They\'re 
    suitable for a community tank, but struggle in a cycling tank, so it\'s best to 
    introduce them after a cycle is completed. The tank in question should be at 
    least 10 gallons with medium bright lighting and contain warm water with a pH of
    7 or 8. Despite their hardy nature, they\'re still at risk for contracting 
    diseases, so it\'s best to clean the tank once a week to decrease the possibility
    of this occurring. It\'s best to feed them at least twice a day in moderation and 
    keep track of feeding times and amounts. Additionally, all the food should be 
    consumed within a few minutes (decrease the serving size if this doesn\'t occur).
    You can feed them tropical flakes, but try to include live foods such as brine 
    shrimp and microworms which are more nourishing. It should be noted that the 
    higher the temperature of the water is, the higher their metabolism, which means 
    they\'ll necessitate more feeding and have higher levels of activity. Healthy 
    Platys are typically more active. Additionally, they\'re very easy to breed and 
    females can store male sperm for long periods of time. However, if breeding doesn\'t
    peak your interest, you can introduce other types of male tropical fish (avoid 
    aggressive species) or attempt to obtain a single gender in order to decrease the
    likelihood of breeding.');

INSERT INTO fish (commonName, sciName, type, family, careLvl, temperament, waterParams, maxSize, imagePath, breeding, genderID, description)
	VALUES('green fire tetra','Aphyocharax rathbuni','tropical', 'Characidae', 
    'easy-medium', 'peaceful', '70-82F', '2"', 'Images/greenFireTetra.jpg', 
    'egg-layer', 'In the aquarium, the white tips on the dorsal, pelvic, and pectoral
    fins can identify the male. Males have white on their dorsal, pectoral, and 
    pelvic fins.', 'Green fire tetras get their name from their colors. They 
    illuminate green throughout their body except for a bright red patch on the lower
    back-side towards the tail fin. These fish are very peaceful and can be seen both
    schooling and shoaling. They are most comfortable in a group of 6 or more. Green
    fire tetras are sensitive to temperature changes, so try to add in new water that
    is about the same temperature as the tank when doing water changes. They are omnivorous
    and will gladly eat all types of food, from flakes to live.');

INSERT INTO fish (commonName, sciName, type, family, careLvl, temperament, waterParams, maxSize, imagePath, breeding, genderID, description)
	VALUES('Albino, Hi-fin-Swordtails','Xiphophorus helleri','tropical', 'Poeciliidae',
    'easy', 'peaceful', '72-79F', '4-6"', 'Images/swordTail.jpeg', 'livebearer', 
    'Mature females are noticeably larger than male, while mature males will have 
    "swords" on their tail fin. Male gonopodiums(anal fins) will also be pointed,
    while females will be a fan shape. Depending on the color morph, females may 
    show a darkened spot, called a gravel spot, right above the anal fin.', 'Swordtails 
    come in a huge variety. There are endless color morphs and fin patterns, such as 
    lyretail, hi-fin, and sale-fin. They are a great community fish, but do not school
    with each other. Swordtails are livebearers, meaning they give birth to live young.
    They are known to eat their babies, so if you want to keep them be sure to have 
    lots of hiding places in the tank or have a separate tank for the babies (also 
    called fry). Females can give birth every 1-2 months, so also have a plan if you
    have too many babies. Males are known to constantly chase the females, trying to
    mate. To reduce and avoid stressing females, it is best to keep them in a ratio
    of 2 females to every 1 males. Swordtails are omnivorous and will accept 
    commercially prepared flake and freeze dried or frozen foods. They are often 
    seen grazing on algae off of surfaces as well! ');


INSERT INTO fish (commonName, sciName, type, family, careLvl, temperament, waterParams, maxSize, imagePath, breeding, genderID, description)
	VALUES('asian rummynose','sabwa resplendens','coldwater', 'Cyprinidae', 
    'medium', 'peaceful', '65-74F', '1"', 'Images/asianRummynose.jpg', 'egg-scatterer',
    'Females are an olive green color with a black dot above their anal fin.
    Males are a metallic blue color with red on their face and tips of their 
    tailfin.', 'The Asian rummynose, also known as the rummynose rasbora, is a 
    gorgeous fish to have. They are an endangered species because of habitat loss
    and invasive species. It is best to keep them in their own tank. These fish 
    will school with one another, and feel most comfortable in a well-planted 
    tank in a group of 6 or more. A nicely planted tank also encourages breeding 
    activity. The ratio of female to male rasboras should be 3:1 to reduce aggression 
    amongst males. Unfortunately, many hobbyists don\'t know this and will buy only
    or mostly males because males are more bright and colorful. The Asian rummynose
    is an omnivore, so it needs both veggies and protein in its diet.');

INSERT INTO fish (commonName, sciName, type, family, careLvl, temperament, waterParams, maxSize, imagePath, breeding, genderID, description)
	VALUES('Dwarf-Honey Gourami','Trichogaster chuna','tropical', 'Osphronemidae',
    'easy', 'peaceful', '74-80F', '1-2"', 'Images/honeyGourami.jpg', 'egg-layer', 
    'Mature males will have a pointed dorsal fin and are usually brighter in color.
    Female are rounder and have duller colors.', 'There are many species of Dwarf
    Gourami within the fish community. Honey Gouramis are a vivid bright yellow 
    color that will add a pop of color to any tank. They make excellent spotlight
    fish for a smaller aquarium. Males can be aggressive toward other males if 
    space is limited. Dwarf Gouramis are labyrinth fish just like bettas, this 
    means that they have a special organ allowing them to breath air from the 
    surface of the water. As a result, it is very important to allow air 
    ventilation above the water. Dwarf Gouramis also breed like bettas, building
    bubble nest to incubate and raise their babies(fry). Honey Gouramis are
    omnivores and will accept a wide range of food. They do have a small mouth 
    though, so make sure the food is offered at an appropriate size. ');

INSERT INTO fish (commonName, sciName, type, family, careLvl, temperament, waterParams, maxSize, imagePath, breeding, genderID, description)
	VALUES('Red Phantom Tetra','Hyphessobrycon sweglesi','tropical', 'Characidae',
    'medium', 'semi-aggressive', '68-79F', '6"', 'Images/redPhantomTetra.jpg', 
    'egg-scatterer', 'Males have long fins, and females have more pronounced black
    markings. ', ' The Red Phantom Tetra looks similar in color and shape to the 
    Serpae Tetra; however, the anal fin of the Serpae Tetra are black and white 
    but not in the Red Phantom Tetra. They live well with other peaceful species
    and is a good community fish. The Red Phantom Tetra will school for security 
    since they are timid and move slow, so it is a good idea to have a densely 
    planted tank for them to hide. Most of them are wild caught because they are 
    hard to breed in captivity. Therefore, they can be more sensitive compared to
    other tetra species. Once established to a tank, the Red Phantom Tetra is 
    hardy. They are most comfortable in soft-medium water but can be adapted to 
    live in harder water. The Red Phantom Tetra are omnivores and will eat flakes
    as well as live and frozen food.');

INSERT INTO fish (commonName, sciName, type, family, careLvl, temperament, waterParams, maxSize, imagePath, breeding, genderID, description)
	VALUES('Forktailed Rainbow','Pseudomugil furcatus','tropical', 'Pseudomugilidae',
    'medium', 'peaceful', '75-82F', '2"', 'Images/furcataRainbow.jpg', 'egg-scatterer',
    'Males are more colorful and their pectoral fins look like wings that hover 
    above their body.', 'The forktailed rainbowfish, also known as the furcata or
    blue eye forktail rainbow, is an absolutely gorgeous fish! Its bright blue 
    eyes and yellow fins are sure to capture the attention of anyone who looks 
    into their tank. These shoaling fish appreciate a tank with a lot of plants 
    in it. They are usually peaceful, but can be nippy at times. Furcata rainbows
    can be sensitive to changes in water conditions, so it\'s best to keep the 
    tank as clean as possible. They are omnivorous and will gladly eat all types 
    of food, as long as it fits in their mouths.');


INSERT INTO fish (commonName, sciName, type, family, careLvl, temperament, waterParams, maxSize, imagePath, breeding, genderID, description)
	VALUES('Golden Tetra','Hemigrammus rodwayi','tropical', 'Characidae', 'easy',
    'peaceful', '75-82F', '2.2"', 'Images/goldenTetra.jpg', 'egg-scatterer', 
    'Females typically appear rounder or fuller in the stomach area while males 
    are usually more colorful. Males have more red pigmentation and a white anal 
    fin.', 'Golden tetras, also known as brass tetras, can easily take attention 
    away from the other fish in their tank because of their stunning shine. 
    Though they are not colorful, with good lighting these guys can shine like 
    diamonds! They feel most comfortable in a school of 6 or more, and enjoy a 
    tank with a lot of swimming space. These tetras are very peaceful and are 
    sure to get along with other fish in the tank. They are omnivores that will 
    gladly accept flake, frozen, or live foods.');

    
    

      
ALTER TABLE fish ADD FULLTEXT(commonName);


