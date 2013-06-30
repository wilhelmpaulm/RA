--
-- MySQL 5.5.24
-- Thu, 27 Jun 2013 04:28:58 +0000
--

CREATE DATABASE `webcrawler` DEFAULT CHARSET latin1;

USE `webcrawler`;

CREATE TABLE `reference` (
   `id` int(11) not null auto_increment,
   `status` varchar(25) not null,
   `lang` varchar(25) not null,
   `referenced_id` int(11) not null,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- [Table `reference` is empty]

CREATE TABLE `websites` (
   `id` int(11) not null auto_increment,
   `id_eng` text not null,
   `id_fil` text not null,
   `url_eng` text not null,
   `title_eng` text not null,
   `body_eng` text not null,
   `url_fil` text not null,
   `title_fil` text not null,
   `body_fil` text not null,
   `type` text not null,
   `date_captured` timestamp not null default CURRENT_TIMESTAMP,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=8;

INSERT INTO `websites` (`id`, `id_eng`, `id_fil`, `url_eng`, `title_eng`, `body_eng`, `url_fil`, `title_fil`, `body_fil`, `type`, `date_captured`) VALUES 
('4', '307335', '3073515', 'http://www.gmanetwork.com/news/story/307335', '', '(Updated 11:15 p.m.) A widespread power outage hit Metro Manila and other parts of Luzon early Wednesday afternoon, compelling office workers to toil by candlelight and raising concerns about possible disruption on election day next week.Shortly after the outage, the LRT went on code red at about 2 p.m. – all trains on hold position, no entry in all stations - for both Lines 1 and 2, LRTA spokesman Hernando Cabrera said on Twitter.	LRT-1 resumed full line operations at around 5:55 p.m., according to the latest tweet from Cabrera.	 			A Comelec employee at the main office in Intramuros, Manila, on Wednesday continues with her work with the help of candles as a power outage hit the National Capital Region.   Amita O. LegaspiThe blackout was caused by a sudden outage in five plants supplying power to the Luzon grid, the National Grid Corp. of the Philippines (NGCP) said.In a statement posted on its Twitter account, the NGCP said a total of 3,700 megawatts went offline, and it had no timetable when power would be restored.\"(But the) NGCP assures the public that its transmission lines are secure and fully functional. It will dispatch available capacities once the power plants are restored and online,\" it said.Power outages were reported as far north as the Ilocos region and as far south as Bicol in the main island of Luzon.NGCP spokesperson Atty. Cynthia Alabanza said five power plants in Luzon, which has an average energy requirement of 8,000 megawatts, went on emergency shutdown at the same time for still unexplained reasons.The cause of the major power disruption was still unknown an hour after it started and photos of candlelit Comelec workers began to be shared via Twitter, prompting nervous jokes about rehearsing for election scenarios on May 13.Meralco franchiseMeralco said on its Twitter account: \"At 1:51 p.m., a widespread power outage occurred within the franchise area of Meralco. Cause is still being checked.\"The company\'s spokesperson Dina Lomotan said Meralco has resorted to load dropping in some areas, and making sure critical facilities like Malacañang and the LRT are spared from the effects of the outage. However, power was cut in both areas anyway.In an interview with GMA News Online, Meralco Spokesperson Joe Zaldarriaga said the power outage was caused by a sudden supply deficiency, but he said they are confirming the exact causes of the outage.\"What I can say is around three thousand megawatts ang nawala sa grid,\" Zaldarriaga said.A tweet from Meralco later said, \"Several transmission lines tripped out due to still undetermined cause, resulting in the isolation of Sta. Rita, San Lorenzo, Calaca, Ilijan, QPPL [Quezon Power Plant Philippines, Ltd.] and Sual 1 power plants. Meralco is closely coordinating with NGCP on the matter.\"External factorsA statement from the First Gas Power Corporation on the widespread blackout said: \"At around 1351H all 6 Units of Santa Rita and San Lorenzo simultaneously tripped caused by external grid event. The units are being prepared using emergency backup power supply of plant and ready for startup awaiting backfeed power from grid.\"A separate advisory from Team Energy, which runs the Sual coal-fired plant in Pangasinan, also attributed the outage in the facility \"to external factors.\"The statement added: \"The drop in grid frequency caused by the trip of other plants resulted in an automatic trip of Sual unit 1. This is a protective system meant to prevent major damage to our facility. We are currently trying to start up the plant. Barring any complications, It should be ready to provide electricity to the grid in 1-2 hours.\"Likewise, Kepco Philippines, operator of the Ilijan power plant located in Batangas City, also blamed external factors for causing the power outage in one of its operational blocks.“Ang disturbance [ay] galing sa labas. [Then] nag-operate ‘yung breaker to activate protection,” Patrick Dy Echo, Ilijan power plant’s plant reliability department manager, told GMA News Online.Of its 1,200 MW capacity, about half or 600 MW was temporarily deactivated. But operations were back to normal by 7:50 p.m.As of posting time, GMA News Online was unable to reach representatives of Quezon Power Philippines Ltd. in Mauban, Quezon, and DMCI Power Corp., operator of Calaca power plant in BatangasPower slowly restoredThe National Grid Corporation of the Philippines estimated that Luzon\'s power supply would be back to normal before 12 midnight, according to a report aired on GMA News TV’s “State of the Nation with Jessica Soho” Wednesday night.As of 9 p.m., 89 percent of Meralco\'s (Manila Electric Company) franchise area had its power restored, while the Luzon grid had 77 percent of its power back.\"We\'re slowly restoring as the power is coming in,\" Meralco\'s Zaldarriaga said, adding that full restoration is expected in affected areas in Metro Manila, Bulacan, Rizal, Cavite and Laguna within the day.In Camarines Sur, GMA News\' Naga bureau reported that power had been restored by 5 p.m.Election dayThe Department of Energy immediately allayed fears of sabotage, with one week to go before the May 13 elections.DOE Secretary Jericho Petilla said they are undertaking preventive measures to make sure such a massive blackout will not be repeated on election day, radio dzBB reported.Mylene Capongcol, Director of the DOE\'s Electric Power Industry Management Bureau, said they are taking steps to minimize the chances of a repeat of the widespread outage.\"Posible yan, kaya yan tinitingnan ng DOE para hindi mangyari,\" she said in an interview on dzBB radio, when asked if a similar blackout could occur during election day. —  with reports from Patricia Denise Chiu, Gian Geronimo & Rouchelle Dinglasan/LBG/HS/YA, GMA News', 'http://www.gmanetwork.com/news/story/3073515', '', 'Nawalan ng kuryente sa ilang bahagi ng Metro Manila at sa ilang franchise area ng Meralco nitong Miyerkules ng hapon.Apektado rin ang Light Rail Transit, kung saan dalawa sa kanilang linya ay pansamantalang inilagay sa code red – ibig sabihin walang bumibiyahe na tren at walang pinapapasok sa mga istasyon – matapos mawalan ng kuryente bandang alas-2 ng hapon.\"Inaalam pa namin ano ang naging dahilan,\" ani Meralco spokesperson Dina Lomotan sa panayam ng dzBB.Ayon sa kanya, naghihintay pa sila ng impormasyon mula sa National Grid Corp. of the Philippines (NGCP) sa naging sanhi sa pagkawala ng kuryente.Inihayag naman ng Meralco sa kanilang Twitter account na nawalan ng kuryente bandang 1:51 ng hapon.\"At 1:51 p.m., a widespread power outage occurred within the franchise area of Meralco. Cause is still being checked,\" ayon nito.Sa ngayon, nagsagawa muna ang Meralco ng load dropping sa ilang mga lugar, at sinisiguro nilang hindi apektado sa outage ang mga kritikal na area tulad ng Malacañang at ng LRT.Sa hiwalay panayam ng GMA News Online, sinabi ni Meralco spokesperson Joe Zaldariagga na ang pagkawala ng kuryente ay bunsod sa biglaang kakulangan ng suplay, ngunit sinusuri pa nila ang eksaktong sanhi nito.\"What I can say is around three thousand megawatts ang nawala sa grid,\" ani Zaldariagga.Samantala, sinabi ng Light Rail Transit Administration na apektado ang kanilang operasyon dahil sa pagkawala ng kuryente.Inilagay sa code rode ang LRT – \"all trains on hold position, no entry in all stations\" – para sa Lines 1 at 2, ani LRTA spokesman Hernando Cabrero sa Twitter.Ngunit, dakong alas-3 ng hapon naibalik na ang operasyon ng LRT2 ayon sa tweet ng LRTA.Limang planta pumalyaSamantala, sinabi ng National Grid Corp. of the Philippines na ang paghinto ng limang power plants ang dahilang ng blackout sa Luzon.Ayon sa pahayag ng NGCP sa kanilang Twitter account, 3,700 megawatts ang kakulangan ng enerhiya at wala pa umanong timetable kung kelan maibabalik sa normal ang power supply.\"(But the) NGCP assures the public that its transmission lines are secure and fully functional. It will dispatch available capacities once the power plants are restored and online,\" ayon sa NGCP.Sinisiguro na man ng Department of Energy na hindi pananabotahe ang nangyaring blackout.Ayon kay DOE Secretary Jericho Petilla, gumawaga na sila ng paraan upang hindi maulit sa Election Day ang nangyari, ayon sa ulat ng dzBB. — Amanda Fernandez /LBG, GMA News', 'news articles', '2013-06-25 21:03:57'),
('5', '307335', '3073515', 'http://www.gmanetwork.com/news/story/307335', '', '(Updated 11:15 p.m.) A widespread power outage hit Metro Manila and other parts of Luzon early Wednesday afternoon, compelling office workers to toil by candlelight and raising concerns about possible disruption on election day next week.Shortly after the outage, the LRT went on code red at about 2 p.m. – all trains on hold position, no entry in all stations - for both Lines 1 and 2, LRTA spokesman Hernando Cabrera said on Twitter.	LRT-1 resumed full line operations at around 5:55 p.m., according to the latest tweet from Cabrera.	 			A Comelec employee at the main office in Intramuros, Manila, on Wednesday continues with her work with the help of candles as a power outage hit the National Capital Region.   Amita O. LegaspiThe blackout was caused by a sudden outage in five plants supplying power to the Luzon grid, the National Grid Corp. of the Philippines (NGCP) said.In a statement posted on its Twitter account, the NGCP said a total of 3,700 megawatts went offline, and it had no timetable when power would be restored.\"(But the) NGCP assures the public that its transmission lines are secure and fully functional. It will dispatch available capacities once the power plants are restored and online,\" it said.Power outages were reported as far north as the Ilocos region and as far south as Bicol in the main island of Luzon.NGCP spokesperson Atty. Cynthia Alabanza said five power plants in Luzon, which has an average energy requirement of 8,000 megawatts, went on emergency shutdown at the same time for still unexplained reasons.The cause of the major power disruption was still unknown an hour after it started and photos of candlelit Comelec workers began to be shared via Twitter, prompting nervous jokes about rehearsing for election scenarios on May 13.Meralco franchiseMeralco said on its Twitter account: \"At 1:51 p.m., a widespread power outage occurred within the franchise area of Meralco. Cause is still being checked.\"The company\'s spokesperson Dina Lomotan said Meralco has resorted to load dropping in some areas, and making sure critical facilities like Malacañang and the LRT are spared from the effects of the outage. However, power was cut in both areas anyway.In an interview with GMA News Online, Meralco Spokesperson Joe Zaldarriaga said the power outage was caused by a sudden supply deficiency, but he said they are confirming the exact causes of the outage.\"What I can say is around three thousand megawatts ang nawala sa grid,\" Zaldarriaga said.A tweet from Meralco later said, \"Several transmission lines tripped out due to still undetermined cause, resulting in the isolation of Sta. Rita, San Lorenzo, Calaca, Ilijan, QPPL [Quezon Power Plant Philippines, Ltd.] and Sual 1 power plants. Meralco is closely coordinating with NGCP on the matter.\"External factorsA statement from the First Gas Power Corporation on the widespread blackout said: \"At around 1351H all 6 Units of Santa Rita and San Lorenzo simultaneously tripped caused by external grid event. The units are being prepared using emergency backup power supply of plant and ready for startup awaiting backfeed power from grid.\"A separate advisory from Team Energy, which runs the Sual coal-fired plant in Pangasinan, also attributed the outage in the facility \"to external factors.\"The statement added: \"The drop in grid frequency caused by the trip of other plants resulted in an automatic trip of Sual unit 1. This is a protective system meant to prevent major damage to our facility. We are currently trying to start up the plant. Barring any complications, It should be ready to provide electricity to the grid in 1-2 hours.\"Likewise, Kepco Philippines, operator of the Ilijan power plant located in Batangas City, also blamed external factors for causing the power outage in one of its operational blocks.“Ang disturbance [ay] galing sa labas. [Then] nag-operate ‘yung breaker to activate protection,” Patrick Dy Echo, Ilijan power plant’s plant reliability department manager, told GMA News Online.Of its 1,200 MW capacity, about half or 600 MW was temporarily deactivated. But operations were back to normal by 7:50 p.m.As of posting time, GMA News Online was unable to reach representatives of Quezon Power Philippines Ltd. in Mauban, Quezon, and DMCI Power Corp., operator of Calaca power plant in BatangasPower slowly restoredThe National Grid Corporation of the Philippines estimated that Luzon\'s power supply would be back to normal before 12 midnight, according to a report aired on GMA News TV’s “State of the Nation with Jessica Soho” Wednesday night.As of 9 p.m., 89 percent of Meralco\'s (Manila Electric Company) franchise area had its power restored, while the Luzon grid had 77 percent of its power back.\"We\'re slowly restoring as the power is coming in,\" Meralco\'s Zaldarriaga said, adding that full restoration is expected in affected areas in Metro Manila, Bulacan, Rizal, Cavite and Laguna within the day.In Camarines Sur, GMA News\' Naga bureau reported that power had been restored by 5 p.m.Election dayThe Department of Energy immediately allayed fears of sabotage, with one week to go before the May 13 elections.DOE Secretary Jericho Petilla said they are undertaking preventive measures to make sure such a massive blackout will not be repeated on election day, radio dzBB reported.Mylene Capongcol, Director of the DOE\'s Electric Power Industry Management Bureau, said they are taking steps to minimize the chances of a repeat of the widespread outage.\"Posible yan, kaya yan tinitingnan ng DOE para hindi mangyari,\" she said in an interview on dzBB radio, when asked if a similar blackout could occur during election day. —  with reports from Patricia Denise Chiu, Gian Geronimo & Rouchelle Dinglasan/LBG/HS/YA, GMA News', 'http://www.gmanetwork.com/news/story/3073515', '', 'Nawalan ng kuryente sa ilang bahagi ng Metro Manila at sa ilang franchise area ng Meralco nitong Miyerkules ng hapon.Apektado rin ang Light Rail Transit, kung saan dalawa sa kanilang linya ay pansamantalang inilagay sa code red – ibig sabihin walang bumibiyahe na tren at walang pinapapasok sa mga istasyon – matapos mawalan ng kuryente bandang alas-2 ng hapon.\"Inaalam pa namin ano ang naging dahilan,\" ani Meralco spokesperson Dina Lomotan sa panayam ng dzBB.Ayon sa kanya, naghihintay pa sila ng impormasyon mula sa National Grid Corp. of the Philippines (NGCP) sa naging sanhi sa pagkawala ng kuryente.Inihayag naman ng Meralco sa kanilang Twitter account na nawalan ng kuryente bandang 1:51 ng hapon.\"At 1:51 p.m., a widespread power outage occurred within the franchise area of Meralco. Cause is still being checked,\" ayon nito.Sa ngayon, nagsagawa muna ang Meralco ng load dropping sa ilang mga lugar, at sinisiguro nilang hindi apektado sa outage ang mga kritikal na area tulad ng Malacañang at ng LRT.Sa hiwalay panayam ng GMA News Online, sinabi ni Meralco spokesperson Joe Zaldariagga na ang pagkawala ng kuryente ay bunsod sa biglaang kakulangan ng suplay, ngunit sinusuri pa nila ang eksaktong sanhi nito.\"What I can say is around three thousand megawatts ang nawala sa grid,\" ani Zaldariagga.Samantala, sinabi ng Light Rail Transit Administration na apektado ang kanilang operasyon dahil sa pagkawala ng kuryente.Inilagay sa code rode ang LRT – \"all trains on hold position, no entry in all stations\" – para sa Lines 1 at 2, ani LRTA spokesman Hernando Cabrero sa Twitter.Ngunit, dakong alas-3 ng hapon naibalik na ang operasyon ng LRT2 ayon sa tweet ng LRTA.Limang planta pumalyaSamantala, sinabi ng National Grid Corp. of the Philippines na ang paghinto ng limang power plants ang dahilang ng blackout sa Luzon.Ayon sa pahayag ng NGCP sa kanilang Twitter account, 3,700 megawatts ang kakulangan ng enerhiya at wala pa umanong timetable kung kelan maibabalik sa normal ang power supply.\"(But the) NGCP assures the public that its transmission lines are secure and fully functional. It will dispatch available capacities once the power plants are restored and online,\" ayon sa NGCP.Sinisiguro na man ng Department of Energy na hindi pananabotahe ang nangyaring blackout.Ayon kay DOE Secretary Jericho Petilla, gumawaga na sila ng paraan upang hindi maulit sa Election Day ang nangyari, ayon sa ulat ng dzBB. — Amanda Fernandez /LBG, GMA News', 'news articles', '2013-06-25 23:11:21'),
('6', '307501', '307541', 'http://www.gmanetwork.com/news/story/307501', '', '(UPDATED 4:21 p.m.) - The controversial source code for precinct count optical scan (PCOS) machines for the May 13 polls is now open for review, Comelec chairman Sixto Brillantes Jr. said Thursday as he received it from SLI Global Solutions, an international certifier that reviewed it, and the Dominion Voting System that owns it.“We are prepared to come out with the source code in the open and all interested parties  will now be allowed to review it,” he said during the public presentation of the CD that contains the source code.However, the arrival of the source code is almost certain to be too late for a proper review by local experts before the May 13 elections.Brillantes thanked both Dominion and Smartmatic for agreeing to bring the source code to the Philippines despite their legal dispute.“We owe it to Smartmatic and Dominion. They do not want that the elections in this country on May 13 will have some taint of vagueness or lack of credibility,” he said.But technology specialists have long been saying that the source code must also be reviewed by local experts, as required by law.Gus Lagman, a former Comelec commissioner who has become among the staunchest critics of the Comelec\'s preparations for the automated elections, said the turnover of the source code on Thursday is too late, asserting that a proper review would take four to six months.\"Medyo natatakot ako,\" Lagman said. \"Halimbawa may nakitang diperensya sa source code, meron nang nanalo, madami natalo. Pag nagkaproblema na lumabas, sasabihin ng natalo invalid. Wala akong solusyon doon. Masyadong nakakatakot.\"As of posting time, the source code review was ongoing in a room inside Comelec’s Project Management Office.Only representatives from Dominion, SLI Global SOlutions, Comelec, political parties and interested groups were allowed inside, but an LCD television was placed outside the room to show what was happening inside but without the audio.Top secretDominion’s engineering manager Reed Bodwell was seen in front of a computer, where the source code was encrypted, answering the questions from the representatives of Liberal Party (LP), United Nationalist Alliance (UNA), and Parish Pastoral  Council for Responsible Voting (PPCRV).The representatives were not allowed to disclose what they learned from the review.The review, which started around 2:30 p.m., is expected to last until 6:00 p.m. Thursday and continue the next day if the parties are not contented with Dominion’s answers.The review will be suspended as the Comelec will be busy for the elections. It is expected to resume in two weeks.The source code was earlier reviewed by SLI, which said it passed their tests and met their standards.\"Final results of the review of modified code determined that the code satisfactorily met the prescribed standards,\" SLI said in its 16-page report dated February 12, 2013 and released on Thursday by the Comelec.\"Additionally all remaining \'major\' discrepancies from the May 2011 code base were determined to be satisfactorily resolved. No \'critical\' or \'major\' discrepancies remain open within the source code base,\" it added.The report further stated that no intentionally malicious code, written by the vendor and included in the voting system source code, was discovered.Brillantes said the warring technology suppliers had an agreement but it cannot be divulged as it might affect the case the two firms are facing.“There are items that are supposed to be confidential because they have a pending legal dispute in US. We do not want to affect this ongoing legal battle so we are not allowing them to make specific disclosure except to turn over the source code to us,” said Brillantes.SafekeepingThe source code was contained in a compact disc which was brought to the country Sunday night by Michael Santos, SLI senior test manager, and handed over during the press presentation to Dominion representatives.Santos tried to install the source code to a desktop which will also be used for the review of the source code. The initial attempt failed as Santos was encrypting straight from the CD.After analyzing the problem, Comelec’s Project Management Office head Jose Tolentino said Santos will load the source code CD into the desktop’s hard drive before the encryption by entering three passwords.When the second attempt succeeded, Santos then entered his password, followed by Tolentino on behalf of Comelec and then a Dominion representative.The Comelec will be putting the CD in a box which will be brought to the Bangko Sentral ng Pilipinas and put in a vault for safekeeping.When the second attempt succeeded, Santos then entered his password, followed by Tolentino on behalf of Comelec, and then Dominion’s Bodwell.After the press presentation, Comelec put the CD in a safety box together with the documents. It was brought to the Bangko Sentral ng Pilipinas and put in a vault for safekeeping. — LBG/HS/VVP, GMA News', 'http://www.gmanetwork.com/news/story/307541', '', 'Comelec to receive source code after encryption . Michael Santos, senior test manager of SLI Global Solutions, shows the Dominion source code review during a press conference at the Comelec office in Intramuros Manila on Thursday. Dominion representatives said it will encrypt the source code before turning it over to the poll body.  Danny Pata   \rKahit gipit na sa oras, hawak na ng Comelec sa wakas ang kontrobersyal na source code ng precinct count optical scan (PCOS) machines para sa halalan sa Mayo 13, at maaari na itong suriin ng publiko, ayon kay Comelec chairman Sixto Brillantes Jr nitong Huwebes.Tinanggap ni Blrillantes ang source code mula sa mga kinatawan ng SLI Global Solutions, ang international certifier na nagrebyu nito, at sa Dominion Voting System na nagmamay-ari code.“We are prepared to come out with the source code in the open and all interested parties  will now be allowed to review it,” aniya nang iprisenta niya sa publiko ang CD na naglalaman ng source code.Gayunpaman, huli na ang pagdating ng source code sapagkat wala nang sapat na oras upang rebyuhin ng mga local expert bago ang Mayo 13 eleksyon. Ang source code ay naglalaman ng mga instruction para sa operasyon ng PCOS machines.Nagpasalamat si Brillantes sa Dominion at Smartmatic sa desisyon nitong dalhin ang source code sa Pilinas sa kabila ng legal nilang hidwaan.“We owe it to Smartmatic and Dominion. They do not want that the elections in this country on May 13 will have some taint of vagueness or lack of credibility,” ayon kay Brillantes.Gayunpaman, matagal nang iginigiit ng technological specialists na dapat marebyu ng mga local expert ang source code.Ayon kay Gus Lagman, dating Comelec commissioner na naging kritiko sa paghahanda ng Comelec sa automated elections, huli na ang pagdating ng source code nitong Huwebes sapagkat tatagal ng apat hanggang anim na buwan ang pagrerebyu nito.Ayon naman kay Brillantes, maaari itong rebyuhin ng local groups matapos ang eleksyon.\"Medyo natatakot ako,\" ani Lagman. \"Halimbawa may nakitang diperensya sa source code, meron nang nanalo, madami natalo. \'Pag nagkaproblema, sasabihin ng natalo invalid. Wala akong solusyon doon. Masyadong nakatatakot.\"“The issue of credibility is answered with the presence of the source code in compliance with the law,” dagdag niya.Ayon sa kanya, mayroong kasunduan ang dalawang technology suppliers na hindi maaari nilang sabihin sapagkat baka maapektuhan ang kaso na kinahaharap ng dalawang kumpanya.\"There are items that are supposed to be confidential because they have a pending legal dispute in the US. We do not want to affect this ongoing legal battle so we are not allowing them to make specific disclosure except to turn over the source code to us,\" ani Brillantes.Inilagay ang source code sa compact disc na dinala ni Michael Santos, SLI senior test manager, sa bansa noong Linggo ng gabi, at ibinigay sa kinatawan ng Dominion sa press presentation nitong Huwebes.Ipinasok ni Santos ang source code sa desktop na gagamitin para sa rebyu ng source code. Subalit, hindi ito gumana sa unang pagsubok nang buksan ito ni Santos diretso mula sa CD.Matapos suriin ang problema, sinabi ni Project Management Office head ng Comelec Jose Tolentino na sinubukan ni Santos na i-load ang source code CD sa hard drive ng desktop bago itong na-encrypt muli, gamit ang tatlong password.Nang magtagumpay sa ikalawang pagsubok, inilagay ni Santos ang kanyang password, sumunod si Tolentino para sa Comelec at sumunod naman ang kinatawan ng Dominion.Inilagay ng Comelec ang CD sa isang box na kanilang dadalhin sa Bangko Sentral ng Pilipinas upang maitago sa isang vault. — Amanda Fernandez /LBG, GMA News', 'news articles', '2013-06-25 23:18:14'),
('7', '307520', '307543', 'http://www.gmanetwork.com/news/story/307520', '', 'The Supreme Court has postponed the issuance of a temporary environmental protection order (TEPO) in connection with the grounding of a US Navy minesweeper in Tubbataha Reef last January.\"The SC resolved to hold in abeyance the issuance of a TEPO,\" a court source who spoke on condition of anonymity for lack of authority said Thursday.Several groups last April filed a petition asking the high court to issue a writ of kalikasan and a TEPO to stop all activities in connection with the grounding of the USS Guardian. The petitioners said such activities were causing \"trauma\" to the world famous reef.The source, however, said \"the petition was not yet given due course.\"The Supreme Court has already asked the respondents in the petition, except for President Benigno Aquino III, to comment on it within 10 days after notice.Quoting court sources, several media outfits earlier reported that the Supreme Court has issued a writ of kalikasan and has tasked the Court of Appeals to hold hearings for the petition. This was denied by the SC Public Information Office.The Supreme Court is currently in a month-long \"Decision writing break\" and would resume en banc sessions in June.The USS Guardian ran aground in Tubbataha Reef on January 17 and was removed from it almost three months later, or in late March.Among the petitioners were Kalikasan, Bagong Alyansang Makabayan, Bayan Muna party-list, Pamalakaya, Kabataan party-list, Junk Visiting Forces Agreement Movement, Agham, Kilusang Mayo Uno, and Gabriela.Named respondents in the petition were US Navy officials Scott Swift, commander of the US 7th Fleet, and Mark Rice, commanding officer of the USS Guardian, and several Philippine government officials, including Aquino. — Mark Merueñas/KBK, GMA News', 'http://www.gmanetwork.com/news/story/307543', '', 'Ipinagpaliban ng Korte Suprema ang paglabas ng temporary environmental protection order (TEPO) kaugnay ng pagsadsad ng US Navy minesweeper sa Tubbataha Reef noong Enero.	 	\"The SC resolved to hold in abeyance the issuance of a TEPO,\" ani ng court source, na humiling na huwag pangalanan, nitong Huwebes.	 	Noong Abril, naghain ang ilang grupo ng petisyong humihiling sa Korte Suprema na maglabas ng writ of kalikasan at ng TEPO upang pigilan ang lahat ng mga aktibidad kaugnay sa pagsadsad ng USS Guardian. Ayon sa mga nagpetisyon, nagdudulot ng \"trauma\" ang mga aktibidad na ito sa sikat na buhara.	 	Gayunpaman, ayon sa source, \"the petition was not yet given due course.\"	 	Inutusan na ng Korte Suprema ang respondents sa petisyon, maliban kay Pangulong Benigno Aquino III, na magbigay ng komento sa loob ng 10 araw.	 	Ayon sa mga naunang ulat ng ilang media outfits, naghain na umano ang Korte Suprema ng writ of kalikasan at inatasan na ang Court of Appeals na dinigin ang petisyon. Itinanggi ito ng SC Public Information Office.	 	Kasalukuyang nasa isang-buwan pang \"decision writing break\" ang Korte Suprema at nakatakda lamang manumbalik ang en banc sessions nito ngayong Hunyo.	 	Sumadsad ang USS Guardian sa Tubbataha Reef noong Enero 17 at naialis lamang ito tatlong buwan na matapos.	 	Kabilang sa mga petitioner ang mga grupong Kalikasan, Bagong Alyansang Makabayan, Bayan Muna party-list, Pamalakaya, Kabataan party-list, Junk Visiting Forces Agreement Movement, Agham, Kilusang Mayo Uno, at Gabriela.	 	Ang respondents naman sa petisyon ay sina US Navy officials Scott Swift, commander ng US 7th Fleet, at Mark Rice, commanding officer ng USS Guardian, at ilang opisyal ng gobyerno ng Pilipinas, kabilang na si Aquino. — Amanda Fernandez/RSJ, GMA News', 'news articles', '2013-06-25 23:19:09');