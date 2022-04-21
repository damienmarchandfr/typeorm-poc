
CREATE TABLE IF NOT EXISTS car (
  	id SERIAL PRIMARY KEY,
	make VARCHAR(50) CHECK (make <> '') NOT NULL,
	model VARCHAR(50) CHECK (model <> '') NOT NULL,
	price INTEGER CHECK (price > 0 AND price < 10000000) NOT NULL
);

TRUNCATE car RESTART IDENTITY;

insert into car (make, model, price) values ('Mercedes-Benz', '300TE', 117623);
insert into car (make, model, price) values ('Subaru', 'SVX', 40430);
insert into car (make, model, price) values ('Saab', '9-5', 144425);
insert into car (make, model, price) values ('Plymouth', 'Acclaim', 181603);
insert into car (make, model, price) values ('Hyundai', 'Tiburon', 39616);
insert into car (make, model, price) values ('Audi', '100', 186013);
insert into car (make, model, price) values ('Volkswagen', 'Touareg 2', 183047);
insert into car (make, model, price) values ('Plymouth', 'Breeze', 144163);
insert into car (make, model, price) values ('Mazda', 'RX-7', 131010);
insert into car (make, model, price) values ('Chevrolet', '2500', 46734);
insert into car (make, model, price) values ('Audi', 'A4', 90639);
insert into car (make, model, price) values ('Nissan', 'Titan', 33379);
insert into car (make, model, price) values ('Buick', 'Regal', 129174);
insert into car (make, model, price) values ('Hyundai', 'Sonata', 117028);
insert into car (make, model, price) values ('Dodge', 'Ram 1500 Club', 125947);
insert into car (make, model, price) values ('Mitsubishi', 'Montero', 40882);
insert into car (make, model, price) values ('Mercury', 'Grand Marquis', 36804);
insert into car (make, model, price) values ('Jeep', 'Compass', 65126);
insert into car (make, model, price) values ('Mercury', 'Montego', 105650);
insert into car (make, model, price) values ('Ford', 'F450', 138517);
insert into car (make, model, price) values ('BMW', '3 Series', 196420);
insert into car (make, model, price) values ('Mercedes-Benz', 'SLK-Class', 8933);
insert into car (make, model, price) values ('Honda', 'Odyssey', 119415);
insert into car (make, model, price) values ('Subaru', 'SVX', 31031);
insert into car (make, model, price) values ('Mercedes-Benz', 'SL-Class', 29605);
insert into car (make, model, price) values ('Honda', 'Accord', 161313);
insert into car (make, model, price) values ('Bentley', 'Continental', 75746);
insert into car (make, model, price) values ('Mitsubishi', 'Pajero', 142577);
insert into car (make, model, price) values ('Honda', 'Insight', 126459);
insert into car (make, model, price) values ('Volkswagen', 'R32', 172390);
insert into car (make, model, price) values ('BMW', '745', 189891);
insert into car (make, model, price) values ('Lincoln', 'Navigator', 57901);
insert into car (make, model, price) values ('Ford', 'Taurus', 160118);
insert into car (make, model, price) values ('Audi', 'A8', 145482);
insert into car (make, model, price) values ('Toyota', 'Land Cruiser', 83648);
insert into car (make, model, price) values ('Chevrolet', 'Monte Carlo', 35487);
insert into car (make, model, price) values ('BMW', '7 Series', 182903);
insert into car (make, model, price) values ('Mercury', 'Sable', 14489);
insert into car (make, model, price) values ('Chevrolet', 'Silverado', 44562);
insert into car (make, model, price) values ('BMW', 'M5', 108623);
insert into car (make, model, price) values ('Subaru', 'Outback', 152576);
insert into car (make, model, price) values ('Subaru', 'Impreza', 185296);
insert into car (make, model, price) values ('Lincoln', 'MKZ', 191303);
insert into car (make, model, price) values ('Saab', '900', 30578);
insert into car (make, model, price) values ('Mazda', 'B-Series Plus', 27784);
insert into car (make, model, price) values ('Chevrolet', 'Cobalt', 48085);
insert into car (make, model, price) values ('Hyundai', 'Sonata', 187595);
insert into car (make, model, price) values ('Subaru', 'Brat', 79828);
insert into car (make, model, price) values ('Chevrolet', 'Astro', 6940);
insert into car (make, model, price) values ('Rolls-Royce', 'Phantom', 126174);
insert into car (make, model, price) values ('Lexus', 'LS', 150855);
insert into car (make, model, price) values ('Honda', 'Pilot', 61845);
insert into car (make, model, price) values ('Buick', 'Regal', 195411);
insert into car (make, model, price) values ('Saturn', 'Aura', 168295);
insert into car (make, model, price) values ('Daewoo', 'Nubira', 1866);
insert into car (make, model, price) values ('Ford', 'E-Series', 196703);
insert into car (make, model, price) values ('Land Rover', 'Sterling', 95865);
insert into car (make, model, price) values ('Saab', '9-5', 948);
insert into car (make, model, price) values ('Chevrolet', 'Silverado 3500', 147649);
insert into car (make, model, price) values ('Audi', 'Q7', 22951);
insert into car (make, model, price) values ('Infiniti', 'G', 81370);
insert into car (make, model, price) values ('Mercury', 'Cougar', 132032);
insert into car (make, model, price) values ('Audi', 'Coupe Quattro', 7587);
insert into car (make, model, price) values ('GMC', 'Savana 3500', 189309);
insert into car (make, model, price) values ('Mercury', 'Milan', 4282);
insert into car (make, model, price) values ('Kia', 'Rondo', 185568);
insert into car (make, model, price) values ('Mitsubishi', 'Pajero', 78181);
insert into car (make, model, price) values ('Oldsmobile', 'Cutlass', 92208);
insert into car (make, model, price) values ('Dodge', 'Ram 1500 Club', 47491);
insert into car (make, model, price) values ('Mazda', 'B2000', 171035);
insert into car (make, model, price) values ('Nissan', 'Pathfinder', 22609);
insert into car (make, model, price) values ('Saturn', 'Ion', 88126);
insert into car (make, model, price) values ('Porsche', '911', 131152);
insert into car (make, model, price) values ('Dodge', 'Viper', 170840);
insert into car (make, model, price) values ('Infiniti', 'QX', 164538);
insert into car (make, model, price) values ('Nissan', 'Armada', 105318);
insert into car (make, model, price) values ('Infiniti', 'G', 40530);
insert into car (make, model, price) values ('Ford', 'Mustang', 23819);
insert into car (make, model, price) values ('Ford', 'Festiva', 180042);
insert into car (make, model, price) values ('Dodge', 'Caravan', 90490);
insert into car (make, model, price) values ('Mercury', 'Lynx', 81390);
insert into car (make, model, price) values ('Dodge', 'Ram 3500', 79590);
insert into car (make, model, price) values ('Chevrolet', '1500', 97948);
insert into car (make, model, price) values ('Mazda', 'B-Series', 90628);
insert into car (make, model, price) values ('Hyundai', 'Azera', 93596);
insert into car (make, model, price) values ('GMC', 'Safari', 19215);
insert into car (make, model, price) values ('Acura', 'TL', 148034);
insert into car (make, model, price) values ('Mercedes-Benz', 'G-Class', 9359);
insert into car (make, model, price) values ('Spyker', 'C8 Laviolette', 180052);
insert into car (make, model, price) values ('Volkswagen', 'CC', 197558);
insert into car (make, model, price) values ('Scion', 'tC', 139737);
insert into car (make, model, price) values ('Subaru', 'Impreza', 93593);
insert into car (make, model, price) values ('Toyota', 'Highlander', 76548);
insert into car (make, model, price) values ('Toyota', 'Corolla', 195308);
insert into car (make, model, price) values ('Chevrolet', 'Blazer', 38813);
insert into car (make, model, price) values ('Mitsubishi', 'Galant', 18706);
insert into car (make, model, price) values ('Mercury', 'Cougar', 118252);
insert into car (make, model, price) values ('Dodge', 'Ram Van B350', 126960);
insert into car (make, model, price) values ('Isuzu', 'Axiom', 124894);
insert into car (make, model, price) values ('Dodge', 'Ram 1500', 59464);
insert into car (make, model, price) values ('Volvo', 'S40', 145072);
insert into car (make, model, price) values ('Pontiac', 'Grand Am', 75639);
insert into car (make, model, price) values ('Dodge', 'Dakota Club', 60730);
insert into car (make, model, price) values ('Pontiac', 'Firefly', 32843);
insert into car (make, model, price) values ('Infiniti', 'I', 119831);
insert into car (make, model, price) values ('Buick', 'Skyhawk', 59995);
insert into car (make, model, price) values ('Acura', 'TL', 128994);
insert into car (make, model, price) values ('Audi', 'R8', 65648);
insert into car (make, model, price) values ('Hyundai', 'Sonata', 7833);
insert into car (make, model, price) values ('Pontiac', 'Vibe', 134881);
insert into car (make, model, price) values ('Ford', 'Escape', 197971);
insert into car (make, model, price) values ('Mazda', 'Protege', 139846);
insert into car (make, model, price) values ('Bentley', 'Continental GT', 56200);
insert into car (make, model, price) values ('Jaguar', 'X-Type', 57052);
insert into car (make, model, price) values ('Mercedes-Benz', 'SLS AMG', 88039);
insert into car (make, model, price) values ('Chevrolet', 'Express', 139336);
insert into car (make, model, price) values ('Ford', 'Focus', 118514);
insert into car (make, model, price) values ('Pontiac', 'Bonneville', 105199);
insert into car (make, model, price) values ('Buick', 'Rendezvous', 186483);
insert into car (make, model, price) values ('Dodge', 'Stealth', 54390);
insert into car (make, model, price) values ('Chevrolet', 'Express 3500', 6099);
insert into car (make, model, price) values ('Jeep', 'Wrangler', 125696);
insert into car (make, model, price) values ('Ford', 'Mustang', 60575);
insert into car (make, model, price) values ('Ford', 'Ranger', 20885);
insert into car (make, model, price) values ('Mercury', 'Mountaineer', 88996);
insert into car (make, model, price) values ('Acura', 'RDX', 61673);
insert into car (make, model, price) values ('Volvo', 'C70', 103762);
insert into car (make, model, price) values ('Chevrolet', 'G-Series G20', 131645);
insert into car (make, model, price) values ('Ford', 'Mustang', 49307);
insert into car (make, model, price) values ('Pontiac', 'Montana', 189963);
insert into car (make, model, price) values ('Dodge', 'D350 Club', 15568);
insert into car (make, model, price) values ('Nissan', 'Titan', 62339);
insert into car (make, model, price) values ('Plymouth', 'Sundance', 10045);
insert into car (make, model, price) values ('Mitsubishi', 'Endeavor', 168153);
insert into car (make, model, price) values ('Toyota', 'RAV4', 169945);
insert into car (make, model, price) values ('Spyker', 'C8 Double 12 S', 108845);
insert into car (make, model, price) values ('Audi', '5000CS', 42721);
insert into car (make, model, price) values ('Toyota', 'Echo', 7939);
insert into car (make, model, price) values ('Nissan', 'Rogue', 136498);
insert into car (make, model, price) values ('Lexus', 'LX', 27204);
insert into car (make, model, price) values ('Ford', 'F350', 63883);
insert into car (make, model, price) values ('Alfa Romeo', '164', 121767);
insert into car (make, model, price) values ('Suzuki', 'XL-7', 60284);
insert into car (make, model, price) values ('BMW', '5 Series', 159445);
insert into car (make, model, price) values ('Hyundai', 'Santa Fe', 20935);
insert into car (make, model, price) values ('Volkswagen', 'GTI', 35574);
insert into car (make, model, price) values ('Rolls-Royce', 'Phantom', 5764);
insert into car (make, model, price) values ('Porsche', 'Boxster', 159231);
insert into car (make, model, price) values ('Ford', 'F350', 136131);
insert into car (make, model, price) values ('Hyundai', 'Santa Fe', 147986);
insert into car (make, model, price) values ('Nissan', 'Quest', 15633);
insert into car (make, model, price) values ('Dodge', 'Aspen', 1030);
insert into car (make, model, price) values ('Mercedes-Benz', 'C-Class', 60347);
insert into car (make, model, price) values ('Honda', 'Pilot', 159115);
insert into car (make, model, price) values ('Ford', 'F350', 54138);
insert into car (make, model, price) values ('Mazda', 'Tribute', 30042);
insert into car (make, model, price) values ('Mitsubishi', 'Diamante', 193014);
insert into car (make, model, price) values ('Chrysler', 'Town & Country', 15178);
insert into car (make, model, price) values ('Mercedes-Benz', 'SL-Class', 143495);
insert into car (make, model, price) values ('Toyota', 'T100', 139445);
insert into car (make, model, price) values ('Mazda', 'B-Series Plus', 143338);
insert into car (make, model, price) values ('BMW', '330', 10773);
insert into car (make, model, price) values ('Dodge', 'Intrepid', 85098);
insert into car (make, model, price) values ('Nissan', 'Sentra', 166539);
insert into car (make, model, price) values ('Chevrolet', 'TrailBlazer', 181083);
insert into car (make, model, price) values ('Ford', 'Expedition EL', 138985);
insert into car (make, model, price) values ('Chevrolet', 'Uplander', 56713);
insert into car (make, model, price) values ('Alfa Romeo', '164', 16248);
insert into car (make, model, price) values ('Porsche', 'Panamera', 196728);
insert into car (make, model, price) values ('Dodge', 'Shadow', 189868);
insert into car (make, model, price) values ('Lotus', 'Esprit', 144482);
insert into car (make, model, price) values ('Volvo', 'S60', 56791);
insert into car (make, model, price) values ('Volkswagen', 'Routan', 37480);
insert into car (make, model, price) values ('Subaru', 'Tribeca', 130434);
insert into car (make, model, price) values ('Volvo', 'V50', 15128);
insert into car (make, model, price) values ('Ford', 'Ranger', 134582);
insert into car (make, model, price) values ('Acura', 'Legend', 133590);
insert into car (make, model, price) values ('Lexus', 'SC', 174871);
insert into car (make, model, price) values ('Ford', 'Bronco II', 170843);
insert into car (make, model, price) values ('Mercedes-Benz', 'SL-Class', 187457);
insert into car (make, model, price) values ('Mitsubishi', 'Truck', 173145);
insert into car (make, model, price) values ('Chevrolet', 'G-Series G10', 164541);
insert into car (make, model, price) values ('Cadillac', 'Escalade EXT', 78539);
insert into car (make, model, price) values ('Chevrolet', 'Lumina APV', 174917);
insert into car (make, model, price) values ('Chevrolet', 'Impala', 20080);
insert into car (make, model, price) values ('Lexus', 'ES', 762);
insert into car (make, model, price) values ('Cadillac', 'Seville', 82545);
insert into car (make, model, price) values ('Isuzu', 'Amigo', 194855);
insert into car (make, model, price) values ('Cadillac', 'Escalade', 34470);
insert into car (make, model, price) values ('Lincoln', 'Mark LT', 165039);
insert into car (make, model, price) values ('Acura', 'TL', 173737);
insert into car (make, model, price) values ('Volkswagen', 'Jetta', 190622);
insert into car (make, model, price) values ('Aston Martin', 'Vantage', 63463);
insert into car (make, model, price) values ('Buick', 'LeSabre', 189245);
insert into car (make, model, price) values ('Pontiac', 'G3', 149743);
insert into car (make, model, price) values ('Pontiac', 'Montana SV6', 167161);
insert into car (make, model, price) values ('Chevrolet', 'Caprice Classic', 63209);
insert into car (make, model, price) values ('Lexus', 'IS', 179250);
insert into car (make, model, price) values ('Ford', 'Focus', 198979);
insert into car (make, model, price) values ('Porsche', '968', 53885);
insert into car (make, model, price) values ('Saturn', 'Ion', 56008);
insert into car (make, model, price) values ('Mitsubishi', 'Lancer', 174835);
insert into car (make, model, price) values ('Chevrolet', 'Impala', 192444);
insert into car (make, model, price) values ('Acura', 'RL', 38473);
insert into car (make, model, price) values ('Mazda', 'Millenia', 59364);
insert into car (make, model, price) values ('Rolls-Royce', 'Phantom', 172462);
insert into car (make, model, price) values ('BMW', '645', 94855);
insert into car (make, model, price) values ('Infiniti', 'QX56', 96110);
insert into car (make, model, price) values ('Pontiac', '6000', 138717);
insert into car (make, model, price) values ('Porsche', '928', 2275);
insert into car (make, model, price) values ('Chevrolet', 'Tahoe', 109110);
insert into car (make, model, price) values ('Dodge', 'Neon', 116632);
insert into car (make, model, price) values ('Mazda', 'MX-5', 95846);
insert into car (make, model, price) values ('Lincoln', 'Town Car', 84348);
insert into car (make, model, price) values ('Jaguar', 'XJ Series', 25356);
insert into car (make, model, price) values ('Ford', 'Windstar', 194552);
insert into car (make, model, price) values ('Ford', 'Taurus', 49796);
insert into car (make, model, price) values ('GMC', 'Suburban 2500', 60206);
insert into car (make, model, price) values ('Land Rover', 'LR3', 53323);
insert into car (make, model, price) values ('GMC', 'Yukon XL 1500', 72666);
insert into car (make, model, price) values ('BMW', '3 Series', 168913);
insert into car (make, model, price) values ('Chevrolet', 'Astro', 150851);
insert into car (make, model, price) values ('Audi', 'Allroad', 90767);
insert into car (make, model, price) values ('Pontiac', 'Safari', 40410);
insert into car (make, model, price) values ('Volkswagen', 'Passat', 180290);
insert into car (make, model, price) values ('Lotus', 'Elise', 96060);
insert into car (make, model, price) values ('Acura', 'TL', 137067);
insert into car (make, model, price) values ('GMC', 'Sierra 2500', 161094);
insert into car (make, model, price) values ('BMW', '7 Series', 166456);
insert into car (make, model, price) values ('Ford', 'F350', 109062);
insert into car (make, model, price) values ('Mercedes-Benz', 'W123', 97322);
insert into car (make, model, price) values ('BMW', 'X3', 30192);
insert into car (make, model, price) values ('Toyota', 'Land Cruiser', 47785);
insert into car (make, model, price) values ('Acura', 'NSX', 75071);
insert into car (make, model, price) values ('Chevrolet', 'Silverado 1500', 184233);
insert into car (make, model, price) values ('Honda', 'Insight', 111796);
insert into car (make, model, price) values ('Pontiac', 'Bonneville', 7675);
insert into car (make, model, price) values ('Lincoln', 'Town Car', 167220);
insert into car (make, model, price) values ('Toyota', 'Avalon', 4657);
insert into car (make, model, price) values ('Nissan', 'Xterra', 82907);
insert into car (make, model, price) values ('Nissan', 'Cube', 124562);
insert into car (make, model, price) values ('Suzuki', 'Swift', 174772);
insert into car (make, model, price) values ('Honda', 'Element', 99956);
insert into car (make, model, price) values ('Mazda', 'RX-8', 109179);
insert into car (make, model, price) values ('Mercury', 'Cougar', 84773);
insert into car (make, model, price) values ('Ford', 'F-Series', 134443);
insert into car (make, model, price) values ('Lexus', 'GX', 163141);
insert into car (make, model, price) values ('Toyota', 'Corolla', 117975);
insert into car (make, model, price) values ('Ford', 'Taurus', 187199);
insert into car (make, model, price) values ('Ford', 'Econoline E250', 190526);
insert into car (make, model, price) values ('Toyota', 'Prius c', 101675);
insert into car (make, model, price) values ('Isuzu', 'Rodeo', 122669);
insert into car (make, model, price) values ('Mercedes-Benz', 'SL-Class', 147195);
insert into car (make, model, price) values ('Mitsubishi', 'GTO', 77439);
insert into car (make, model, price) values ('Ford', 'Fiesta', 86488);
insert into car (make, model, price) values ('Toyota', 'RAV4', 175323);
insert into car (make, model, price) values ('Land Rover', 'Range Rover Sport', 107302);
insert into car (make, model, price) values ('Volvo', 'C30', 35192);
insert into car (make, model, price) values ('Ford', 'Edge', 99961);
insert into car (make, model, price) values ('Isuzu', 'Rodeo', 181819);
insert into car (make, model, price) values ('Mercury', 'Cougar', 184478);
insert into car (make, model, price) values ('Subaru', 'Forester', 26205);
insert into car (make, model, price) values ('Toyota', 'Sequoia', 79683);
insert into car (make, model, price) values ('Mercedes-Benz', 'GLK-Class', 110139);
insert into car (make, model, price) values ('Chevrolet', 'Express', 67863);
insert into car (make, model, price) values ('Lincoln', 'LS', 74142);
insert into car (make, model, price) values ('Mazda', 'B-Series', 183645);
insert into car (make, model, price) values ('Aston Martin', 'DB9', 86062);
insert into car (make, model, price) values ('Toyota', 'Prius Plug-in Hybrid', 121412);
insert into car (make, model, price) values ('Lincoln', 'Navigator', 62191);
insert into car (make, model, price) values ('Porsche', 'Cayman', 50802);
insert into car (make, model, price) values ('Porsche', '968', 81813);
insert into car (make, model, price) values ('Pontiac', 'Firebird', 54069);
insert into car (make, model, price) values ('Toyota', '4Runner', 103733);
insert into car (make, model, price) values ('Mitsubishi', 'Montero', 180683);
insert into car (make, model, price) values ('Dodge', 'Neon', 46084);
insert into car (make, model, price) values ('Toyota', 'RAV4', 19615);
insert into car (make, model, price) values ('Pontiac', 'Bonneville', 3709);
insert into car (make, model, price) values ('Volkswagen', 'Golf', 118990);
insert into car (make, model, price) values ('Lexus', 'LX', 168775);
insert into car (make, model, price) values ('Volkswagen', 'GTI', 165715);
insert into car (make, model, price) values ('Lincoln', 'Town Car', 5786);
insert into car (make, model, price) values ('Pontiac', 'GTO', 159708);
insert into car (make, model, price) values ('Volkswagen', 'Jetta', 75792);
insert into car (make, model, price) values ('Honda', 'Ridgeline', 20111);
insert into car (make, model, price) values ('Lincoln', 'Navigator L', 136171);
insert into car (make, model, price) values ('Volkswagen', 'Jetta', 79845);
insert into car (make, model, price) values ('Kia', 'Sorento', 7546);
insert into car (make, model, price) values ('Mitsubishi', 'Truck', 129138);
insert into car (make, model, price) values ('Chevrolet', 'Venture', 36732);
insert into car (make, model, price) values ('BMW', '530', 176118);
insert into car (make, model, price) values ('Chevrolet', 'Cruze', 131908);
insert into car (make, model, price) values ('GMC', '1500 Club Coupe', 199585);
insert into car (make, model, price) values ('Saab', '9000', 159501);
insert into car (make, model, price) values ('Land Rover', 'Range Rover', 198991);
insert into car (make, model, price) values ('Chevrolet', 'S10 Blazer', 193815);
insert into car (make, model, price) values ('Chrysler', 'Concorde', 101043);
insert into car (make, model, price) values ('Honda', 'Odyssey', 79754);
insert into car (make, model, price) values ('Volkswagen', 'GTI', 171979);
insert into car (make, model, price) values ('Ford', 'Taurus', 166280);
insert into car (make, model, price) values ('Oldsmobile', 'Cutlass Supreme', 71559);
insert into car (make, model, price) values ('Mazda', 'Mazda6', 64312);
insert into car (make, model, price) values ('Land Rover', 'Range Rover', 55151);
insert into car (make, model, price) values ('Lotus', 'Esprit', 65249);
insert into car (make, model, price) values ('Mercury', 'Mountaineer', 123057);
insert into car (make, model, price) values ('Subaru', 'Forester', 82731);
insert into car (make, model, price) values ('Mitsubishi', 'Galant', 184169);
insert into car (make, model, price) values ('Ford', 'Taurus', 175667);
insert into car (make, model, price) values ('Buick', 'Enclave', 189947);
insert into car (make, model, price) values ('Pontiac', 'Grand Am', 57616);
insert into car (make, model, price) values ('Mazda', 'Mazda6 5-Door', 155172);
insert into car (make, model, price) values ('Ford', 'Econoline E150', 157963);
insert into car (make, model, price) values ('Volkswagen', 'Passat', 134152);
insert into car (make, model, price) values ('Audi', 'A4', 65188);
insert into car (make, model, price) values ('Ford', 'Crown Victoria', 161883);
insert into car (make, model, price) values ('BMW', 'M3', 41362);
insert into car (make, model, price) values ('Oldsmobile', 'Regency', 166852);
insert into car (make, model, price) values ('Buick', 'Regal', 129530);
insert into car (make, model, price) values ('Honda', 'Civic', 114301);
insert into car (make, model, price) values ('Dodge', 'Ram Van 2500', 70282);
insert into car (make, model, price) values ('Plymouth', 'Grand Voyager', 3022);
insert into car (make, model, price) values ('Volkswagen', 'Jetta', 105093);
insert into car (make, model, price) values ('Buick', 'Reatta', 187678);
insert into car (make, model, price) values ('Mercedes-Benz', 'W201', 126492);
insert into car (make, model, price) values ('Nissan', 'Rogue', 197413);
insert into car (make, model, price) values ('Kia', 'Rio', 27389);
insert into car (make, model, price) values ('Maserati', 'Quattroporte', 22839);
insert into car (make, model, price) values ('Saturn', 'Ion', 81584);
insert into car (make, model, price) values ('Mercedes-Benz', '190E', 123245);
insert into car (make, model, price) values ('Buick', 'Rendezvous', 142970);
insert into car (make, model, price) values ('Toyota', 'Avalon', 185058);
insert into car (make, model, price) values ('Ford', 'Aspire', 193644);
insert into car (make, model, price) values ('Chevrolet', 'Silverado 1500', 23675);
insert into car (make, model, price) values ('Ford', 'Escort ZX2', 73192);
insert into car (make, model, price) values ('Infiniti', 'QX56', 149378);
insert into car (make, model, price) values ('Honda', 'Passport', 99411);
insert into car (make, model, price) values ('GMC', 'Sierra 1500', 160571);
insert into car (make, model, price) values ('Volkswagen', 'Passat', 167552);
insert into car (make, model, price) values ('Mitsubishi', 'Eclipse', 102153);
insert into car (make, model, price) values ('Chevrolet', 'Cavalier', 119163);
insert into car (make, model, price) values ('Subaru', 'XT', 195469);
insert into car (make, model, price) values ('Mercedes-Benz', 'C-Class', 122693);
insert into car (make, model, price) values ('Subaru', 'Legacy', 142329);
insert into car (make, model, price) values ('Nissan', 'Xterra', 122204);
insert into car (make, model, price) values ('Bentley', 'Azure', 164371);
insert into car (make, model, price) values ('Chevrolet', 'Cavalier', 53544);
insert into car (make, model, price) values ('Volvo', 'V70', 39185);
insert into car (make, model, price) values ('Mitsubishi', 'Outlander', 133235);
insert into car (make, model, price) values ('Toyota', '4Runner', 91722);
insert into car (make, model, price) values ('Honda', 'Insight', 178852);
insert into car (make, model, price) values ('Pontiac', 'Parisienne', 45442);
insert into car (make, model, price) values ('Jaguar', 'S-Type', 60227);
insert into car (make, model, price) values ('Volkswagen', 'Cabriolet', 23046);
insert into car (make, model, price) values ('Toyota', 'Celica', 196642);
insert into car (make, model, price) values ('Mazda', 'MPV', 145281);
insert into car (make, model, price) values ('Mercedes-Benz', '190E', 113954);
insert into car (make, model, price) values ('Scion', 'tC', 26795);
insert into car (make, model, price) values ('Pontiac', 'Bonneville', 140692);
insert into car (make, model, price) values ('Ford', 'E150', 154599);
insert into car (make, model, price) values ('Toyota', '4Runner', 163479);
insert into car (make, model, price) values ('Oldsmobile', 'Cutlass Supreme', 196204);
insert into car (make, model, price) values ('Ford', 'Taurus', 123234);
insert into car (make, model, price) values ('Ford', 'F150', 65775);
insert into car (make, model, price) values ('Acura', 'CL', 174872);
insert into car (make, model, price) values ('Plymouth', 'Laser', 134926);
insert into car (make, model, price) values ('Ford', 'Tempo', 73517);
insert into car (make, model, price) values ('Isuzu', 'Rodeo', 167441);
insert into car (make, model, price) values ('Porsche', '911', 147428);
insert into car (make, model, price) values ('BMW', '5 Series', 51384);
insert into car (make, model, price) values ('Land Rover', 'Discovery', 35301);
insert into car (make, model, price) values ('Dodge', 'Neon', 186286);
insert into car (make, model, price) values ('Suzuki', 'Grand Vitara', 106785);
insert into car (make, model, price) values ('GMC', 'Safari', 130274);
insert into car (make, model, price) values ('Buick', 'Enclave', 141757);
insert into car (make, model, price) values ('Volkswagen', 'Tiguan', 145846);
insert into car (make, model, price) values ('Chevrolet', 'Avalanche 2500', 54357);
insert into car (make, model, price) values ('Mazda', 'Mazda3', 88755);
insert into car (make, model, price) values ('Audi', 'S4', 97216);
insert into car (make, model, price) values ('Lexus', 'LS', 134847);
insert into car (make, model, price) values ('Ford', 'Explorer', 66933);
insert into car (make, model, price) values ('Chevrolet', 'Lumina APV', 125931);
insert into car (make, model, price) values ('Buick', 'Century', 69803);
insert into car (make, model, price) values ('GMC', 'Sonoma Club Coupe', 51942);
insert into car (make, model, price) values ('Chevrolet', 'Prizm', 73883);
insert into car (make, model, price) values ('Mazda', 'B-Series Plus', 83959);
insert into car (make, model, price) values ('Audi', 'Q7', 194880);
insert into car (make, model, price) values ('Porsche', 'Cayman', 182932);
insert into car (make, model, price) values ('Volvo', 'S70', 176694);
insert into car (make, model, price) values ('Lincoln', 'Navigator', 178029);
insert into car (make, model, price) values ('Ford', 'Crown Victoria', 68645);
insert into car (make, model, price) values ('Maybach', '62', 10012);
insert into car (make, model, price) values ('Ford', 'Mustang', 49458);
insert into car (make, model, price) values ('Honda', 'Ridgeline', 1667);
insert into car (make, model, price) values ('Acura', 'Legend', 189272);
insert into car (make, model, price) values ('Chevrolet', 'Cavalier', 164329);
insert into car (make, model, price) values ('Toyota', 'Yaris', 191098);
insert into car (make, model, price) values ('Chevrolet', 'Camaro', 141444);
insert into car (make, model, price) values ('BMW', '600', 38388);
insert into car (make, model, price) values ('Jeep', 'Grand Cherokee', 196113);
insert into car (make, model, price) values ('Infiniti', 'EX', 171761);








