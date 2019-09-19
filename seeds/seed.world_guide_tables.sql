TRUNCATE 
    /*world_guide_users,*/
    countries,
    language,
    places_to_go
    RESTART IDENTITY CASCADE;

/*INSERT INTO world_guide_users (user_name, password, nickname)
VALUES 

    ('dunder', 'a6ea8b6f-c39a-43aa-b075-d0bb4bda951a',  null),
    ('b.deboop', 'a6ea8b6f-c39a-43aa-b075-d0bb4bda951a', null),
    ('c.bloggs', 'a6ea8b6f-c39a-43aa-b075-d0bb4bda951a', 'Charlie'),
    ('s.smith', 'a6ea8b6f-c39a-43aa-b075-d0bb4bda951a', 'Mr. Smith'),
    ('lexlor', 'a6ea8b6f-c39a-43aa-b075-d0bb4bda951a', 'Lexy'),
    ('wippy', 'a6ea8b6f-c39a-43aa-b075-d0bb4bda951a', 'WIP');*/

INSERT INTO countries (name, flag, map, capital, language, currency, currency_code) 
VALUES 
    ('Spain', 'https://imgur.com/lxIxeOt.jpg', 'https://imgur.com/KJc7FWv.jpg', 'Madrid', 'Spanish', 'Euro €', 'EUR'),
    ('Japan', 'https://imgur.com/VbDTlrU.jpg', 'https://imgur.com/mac5hat.jpg', 'Tokyo', 'Japanese', 'Japanese Yen ￥', 'JPY'),
    ('France', 'https://imgur.com/sUPowI7.jpg', 'https://imgur.com/Ir3s5Ii.jpg', 'Paris', 'French', 'Euro €', 'EUR'),
    ('Germany', 'https://imgur.com/M9yHDb0.jpg', 'https://imgur.com/IXcP0Q3.jpg', 'Berlin', 'German', 'Euro €', 'EUR'),
    ('Portugal', 'https://imgur.com/vv1u7qU.jpg', 'https://imgur.com/mufPVhF.jpg', 'Lisbon', 'Portuguese', 'Euro €', 'EUR'),
    ('Italy', 'https://imgur.com/ImklAHW.jpg', 'https://imgur.com/fL7ikho.jpg', 'Rome', 'Italian', 'Euro €', 'EUR'),
    ('China', 'https://imgur.com/g04Vsti.jpg', 'https://imgur.com/HZStR3s.jpg', 'Beijing', 'Mandarin Chinese', 'Yuan ￥', 'CNY'),
    ('Turkey', 'https://imgur.com/DBaDnQl.jpg', 'https://imgur.com/iA2HHFI.jpg', 'Ankara', 'Turkish', 'Turkish lira ₺', 'TRY'),
    ('Thailand', 'https://imgur.com/b9h2hm9.jpg', 'https://imgur.com/Xoyffhs.jpg', 'Bangkok', 'Thai', 'Thai baht ฿', 'THB');

INSERT INTO language (language_name, country_name, hello, goodbye, thank_you, excuse_me, please, sorry, toilet, english, cost, would_like)
VALUES 
    ('Spanish', 'Spain', '¡Hola!', 'Adiós', 'Gracias', 'Disculpe', 'Por favor', 'Lo siento', '¿Dónde está el baño?', '¿Habla inglés?', '¿Cuánto cuesta este?', 'Yo quiero este'),
    ('Japanese', 'Japan', 'こんにちは Konichi wa', 'さようなら Sayonara', 'ありがとう Arigatou', 'すみません　Sumimasen', 'お願いします　Onegai shimasu', 'ごめんなさい　Gomen nasai', 'トイレはどこですか　Toire wa doko desu ka', '英語を話せますか？　Eigo wo hanase masu ka', 'これはいくらですか？　Kore wa ikura desu ka?', 'これを下さい　Kore wo kudasai'),
    ('French', 'France', 'Bonjour', 'Au revoir', 'Merci Beaucoup', 'Excusez-moi', 'S''il vous plaît', 'Désolé', 'Où sont les toilettes', 'Parlez vous anglais?', 'Combien ça(sa) coûte', 'J''aimerais ceci'),
    ('German', 'Germany', 'Hallo', 'Auf Wiedersehen', 'Danke', 'Entschuldigung', 'Bitte', 'Tut mir leid', 'Wo ist das Badezimmer?', 'Sprichst du Englisch', 'Wieviel kostet das','Ich hätte gern diese'),
    ('Portuguese', 'Portugal', 'Olá', 'Adeus', 'Obrigado', 'Com licença', 'Por favor', 'Sinto muito', 'Onde fica o banheiro', 'Você fala inglês?', 'Quanto custa isso ?', 'Eu gostaria deste'),
    ('Italian', 'Italy', 'Ciao', 'Arrivederci', 'Grazie', 'Mi scusi', 'Per favore', 'Mi dispiace', 'Dov''è la toilette', 'Parli inglese?', 'Quanto costa? ?', 'Mi piacerebbe questo'),
    ('Mandarin Chinese', 'China', '你好 Nǐ hǎo', '再见 Zài jiàn', '谢谢 Xièxiè (Shi-e shi-e)', '劳驾 Láojià', '请了 Qǐng le (ching luh)', '对不起 Duìbùqǐ (Dweh bu chi)', '厕所在哪里 Cèsuǒ zài nǎlǐ', '你会说英语吗 Nǐ huì shuō yīngyǔ ma', '这多少钱？Zhè duōshǎo qián?', '给这个 Gěi zhège'),
    ('Turkish', 'Turkey', 'Merhaba', 'Güle güle', 'Teşekkür ederim', 'Affedersiniz', 'Lütfen', 'üzgünüm', 'Tuvalet nerede?', 'İngilizce biliyor musunuz?', 'Bu ne kadar?', 'bunu isterdim'),
    ('Thai', 'Thailand', 'สวัสดี S̄wạs̄dī (Sowadee)', 'ลาก่อน Lā k̀xn (La gon)', 'ขอบคุณ K̄hxbkhuṇ (Kahon)', 'ขอโทษ K̄hxthos̄ʹ (Katoe)', 'โปรด Pord', 'ันขอโทษ C̄hạn k̄hxthos̄ʹ (Chan katoe)', 'ห้องน้ำอยู่ที่ไหน ̄̂H̄̂xngn̂ả xyū̀ thī̀h̄ịn (Hung na yu tin ai)', 'คุณพูดภาษาอังกฤษได้ไหม Khuṇ phūd p̣hās̄ʹā xạngkvs̄ʹ dị̂ h̄ịm (Kuhn Pood Pas Sa Anglas dai mai)', 'นี่ราคาเท่าไหร่ Nī̀ rākhā thèā h̄ịr̀ (Ni rakha tao rai)','ฉันต้องการสิ่งนี้ C̄hạn t̂xngkār s̄ìng nī̂ (Chan dong gan sing ni)');

INSERT INTO places_to_go (country_name, place1_name, place1_img, place1_link, place2_name, place2_img, place2_link, place3_name, place3_img, place3_link, place4_name, place4_img, place4_link)
VALUES
    ('Spain', 'La Sagrada Familia', 'https://imgur.com/cZLXpSn.jpg', 'https://sagradafamilia.org/en/', 'Park Güell', 'https://imgur.com/2aFqu13.jpg', 'https://parkguell.barcelona/en?q=en', 'Alhambra', 'https://imgur.com/OCUnRXW.jpg', 'https://www.alhambradegranada.org/en/', 'Royal Palace of Madrid', 'https://imgur.com/RQVPc0u.jpg', 'https://www.esmadrid.com/en/tourist-information/royal-palace'),
    ('China', 'The Great Wall of China', 'https://imgur.com/OvPTk6P.jpg', 'https://www.chinahighlights.com/greatwall/','Summer Palace', 'https://imgur.com/iYvLMMZ.jpg', 'https://www.travelchinaguide.com/cityguides/beijing/summer.htm', 'Forbidden City', 'https://imgur.com/K82Ip5R.jpg', 'https://www.chinahighlights.com/beijing/forbidden-city/', 'Tiananmen Square', 'https://imgur.com/lgS10d9.jpg', 'https://www.thechinaguide.com/sight/tiananmen-square'),
    ('Japan', 'Mount Fuji', 'https://imgur.com/RPN0quo.jpg', 'https://www.japan-guide.com/e/e2172.html', 'Kinkaku-ji', 'https://imgur.com/PNkeyvH.jpg', 'https://www.japan-guide.com/e/e3908.html', 'Arashiyama', 'https://i.imgur.com/7yCzPPv.jpg', 'https://www.insidekyoto.com/arashiyama', 'Senso-ji', 'https://imgur.com/e4tBsbQ.jpg', 'https://www.japan-guide.com/e/e3001.html'),
    ('France', 'Eiffel Tower', 'https://imgur.com/BPltJMU.jpg', 'https://www.toureiffel.paris/en/the-monument', 'La Louvre', 'https://imgur.com/AQS2Jmi.jpg', 'https://www.louvre.fr/en', 'Notre Dame', 'https://imgur.com/JV0mQeb.jpg', 'https://www.notredamedeparis.fr/en/', 'Palace of Versailles', 'https://imgur.com/wrOHQpt.jpg', 'http://en.chateauversailles.fr/'),
    ('Germany', 'Neuschwanstein Castle', 'https://imgur.com/Tn3cL1z.jpg', 'https://www.neuschwanstein.de/englisch/tourist/', 'The Berlin Wall Memorial', 'https://imgur.com/YjN5AZF.jpg', 'https://www.berliner-mauer-gedenkstaette.de/en/', 'Bradenburg Gate', 'https://imgur.com/fYasY0P.jpg', 'https://www.berlin.de/en/attractions-and-sights/3560266-3104052-brandenburg-gate.en.html', 'Reichstag Building', 'https://imgur.com/dMRy9uy.jpg', 'https://www.bundestag.de/en'),
    ('Portugal', 'Tower of Belém', 'https://imgur.com/MWvDL37.jpg', 'http://www.torrebelem.gov.pt/en/', 'Jerónimos Monastery', 'https://imgur.com/lPWSW05.jpg', 'http://www.mosteirojeronimos.gov.pt/en/', 'Park and National Palace of Pena', 'https://imgur.com/Rb5S26C.jpg', 'http://www.sintra-portugal.com/Attractions/palacio-pena-palace-sintra.html', 'Livraria Lello', 'https://imgur.com/UtxrUGR.jpg', 'https://www.livrarialello.pt/en-us/'),
    ('Italy', 'Colosseum', 'https://imgur.com/OXRcNoF.jpg', 'https://www.lonelyplanet.com/italy/rome/attractions/colosseum/a/poi-sig/1160430/359975', 'The Leaning Tower of Pisa', 'https://imgur.com/F92pRH1.jpg', 'http://www.towerofpisa.org/', 'Trevi Fountain', 'https://imgur.com/dgW9xpl.jpg', 'https://www.rome.net/trevi-fountain', 'Cinque Terre', 'https://imgur.com/HaWH7Fb.jpg', 'https://www.cinqueterre.eu.com/en/'),
    ('Turkey', 'Pamukkale', 'https://imgur.com/gc4Tai9.jpg', 'https://hometurkey.com/en/destinations/pamukkale', 'Hagia Sophia Museum', 'https://imgur.com/5XnzlVF.jpg', 'https://ayasofyamuzesi.gov.tr/en', 'Anıtkabir', 'https://imgur.com/GE507c4.jpg', 'https://turkeytravelplanner.com/go/CentralAnatolia/Ankara/sights/anitkabir.html', 'Temple of Artemis', 'https://imgur.com/A0xjWGm.jpg', 'https://www.ancient.eu/Temple_of_Artemis_at_Ephesus/'),
    ('Thailand', 'Phi Phi Islands', 'https://imgur.com/DKYjvnv.jpg', 'http://www.phuket.com/island/phiphi.htm', 'The Grand Palace', 'https://imgur.com/MKkw0bU.jpg', 'http://www.bangkok.com/attraction-palace/grand-palace.htm', 'Wat Arun', 'https://imgur.com/do50v9E.jpg', 'http://www.bangkok.com/attraction-temple/wat-arun.htm', 'Khao Phing Kan', 'https://imgur.com/J5HY9Zz.jpg', 'https://www.annees-de-pelerinage.com/james-bond-island-khao-phing-kan/');


COMMIT;