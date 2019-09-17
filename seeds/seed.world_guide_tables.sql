TRUNCATE 
    world_guide_users,
    countries,
    language
    RESTART IDENTITY CASCADE;

INSERT INTO world_guide_users (user_name, password, nickname)
VALUES 

    ('dunder', 'a6ea8b6f-c39a-43aa-b075-d0bb4bda951a',  null),
    ('b.deboop', 'a6ea8b6f-c39a-43aa-b075-d0bb4bda951a', null),
    ('c.bloggs', 'a6ea8b6f-c39a-43aa-b075-d0bb4bda951a', 'Charlie'),
    ('s.smith', 'a6ea8b6f-c39a-43aa-b075-d0bb4bda951a', 'Mr. Smith'),
    ('lexlor', 'a6ea8b6f-c39a-43aa-b075-d0bb4bda951a', 'Lexy'),
    ('wippy', 'a6ea8b6f-c39a-43aa-b075-d0bb4bda951a', 'WIP');

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
    ('Thailand', 'https://imgur.com/b9h2hm9.jpg', 'https://imgur.com/Xoyffhs.jpg', 'Bangkok', 'Thai', 'Thai baht ฿', 'THB'),
    ('United Kingdom', 'https://imgur.com/PhCgsDB.jpg', 'https://imgur.com/5O8TuDl.jpg', 'London', 'English', 'British Pound £', 'GBP');

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
    ('Thai', 'Thailand', 'สวัสดี S̄wạs̄dī (Sowadee)', 'ลาก่อน Lā k̀xn (La gon)', 'ขอบคุณ K̄hxbkhuṇ (Kahon)', 'ขอโทษ K̄hxthos̄ʹ (Katoe)', 'โปรด Pord', 'ันขอโทษ C̄hạn k̄hxthos̄ʹ (Chan katoe)', 'ห้องน้ำอยู่ที่ไหน ̄̂H̄̂xngn̂ả xyū̀ thī̀h̄ịn (Hung na yu tin ai)', 'คุณพูดภาษาอังกฤษได้ไหม Khuṇ phūd p̣hās̄ʹā xạngkvs̄ʹ dị̂ h̄ịm (Kuhn Pood Pas Sa Anglas dai mai)', 'นี่ราคาเท่าไหร่ Nī̀ rākhā thèā h̄ịr̀ (Ni rakha tao rai)','ฉันต้องการสิ่งนี้ C̄hạn t̂xngkār s̄ìng nī̂ (Chan dong gan sing ni)'),
    ('English', 'United Kingdom', 'Hello', 'Goodbye', 'Thank you', 'Excuse me', 'Please', 'I''sorry', 'Where is the toilet', 'Do you speak English?', 'How much does this cost?', 'I would like this');

COMMIT;