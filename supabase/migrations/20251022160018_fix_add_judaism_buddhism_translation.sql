-- Add English and Turkish translations for Judaism and Buddhism quiz questions
-- This is a continuation of the translation migration series

-- ==================== JUDAISM LESSONS ====================

-- jodedom-opprinnelse (Origins) - Question 1
UPDATE public.questions SET
  prompt_en = 'According to Jewish tradition, the patriarch ___ (approx. 1800 BCE) made a covenant with one God.',
  prompt_tr = 'Yahudi geleneğine göre, patrik ___ (yaklaşık MÖ 1800) tek bir Tanrı ile antlaşma yaptı.',
  meta_en = '{"answer":"Abraham"}'::jsonb,
  meta_tr = '{"answer":"İbrahim"}'::jsonb
WHERE prompt = 'Ifølge jødisk tradisjon inngikk patriarken ___ (ca. 1800 fvt.) en pakt med én Gud.'
  AND type = 'gap';

-- jodedom-opprinnelse - Question 2
UPDATE public.questions SET
  prompt_en = 'Who received the law (Torah) on Mount Sinai?',
  prompt_tr = 'Sina Dağı''nda yasayı (Tevrat) kim aldı?',
  meta_en = '{"choices":[
    {"id":"a","text":"Abraham"},
    {"id":"b","text":"Moses","correct":true},
    {"id":"c","text":"David"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"İbrahim"},
    {"id":"b","text":"Musa","correct":true},
    {"id":"c","text":"Davut"}
  ]}'::jsonb
WHERE prompt = 'Hvem mottok loven (Toraen) på Sinaifjellet?'
  AND type = 'mcq';

-- jodedom-opprinnelse - Question 3
UPDATE public.questions SET
  prompt_en = 'King Solomon built the first temple in ___.',
  prompt_tr = 'Kral Süleyman ilk mabedi ___''de inşa etti.',
  meta_en = '{"answer":"Jerusalem"}'::jsonb,
  meta_tr = '{"answer":"Kudüs"}'::jsonb
WHERE prompt = 'Kong Salomo bygde det første tempelet i ___.'
  AND type = 'gap';

-- jodedom-opprinnelse - Question 4
UPDATE public.questions SET
  prompt_en = 'When did the Romans destroy the Second Temple?',
  prompt_tr = 'Romalılar İkinci Mabedi ne zaman yıktı?',
  meta_en = '{"choices":[
    {"id":"a","text":"586 BCE"},
    {"id":"b","text":"70 CE","correct":true},
    {"id":"c","text":"1948"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"MÖ 586"},
    {"id":"b","text":"MS 70","correct":true},
    {"id":"c","text":"1948"}
  ]}'::jsonb
WHERE prompt = 'Når ødela romerne det andre tempelet?'
  AND type = 'mcq';

-- jodedom-opprinnelse - Question 5
UPDATE public.questions SET
  prompt_en = 'The Holocaust during World War II took the lives of approximately six million European Jews.',
  prompt_tr = 'İkinci Dünya Savaşı sırasındaki Holokost yaklaşık altı milyon Avrupalı Yahudi''nin hayatını aldı.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Holocaust under andre verdenskrig tok livet av omkring seks millioner europeiske jøder.'
  AND type = 'tf';


-- jodedom-opprinnelse - Question 6
UPDATE public.questions SET
  prompt_en = 'When was the State of Israel established?',
  prompt_tr = 'İsrail Devleti ne zaman kuruldu?',
  meta_en = '{"choices":[
    {"id":"a","text":"1917"},
    {"id":"b","text":"1948","correct":true},
    {"id":"c","text":"1967"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"1917"},
    {"id":"b","text":"1948","correct":true},
    {"id":"c","text":"1967"}
  ]}'::jsonb
WHERE prompt = 'Når ble staten Israel etablert?'
  AND type = 'mcq';

-- jodedom-opprinnelse - Question 7
UPDATE public.questions SET
  prompt_en = 'The ___ refers to the dispersion of Jews to communities around the world.',
  prompt_tr = '___, Yahudilerin dünyanın dört bir yanındaki topluluklara dağılmasını ifade eder.',
  meta_en = '{"answer":"diaspora"}'::jsonb,
  meta_tr = '{"answer":"diaspora"}'::jsonb
WHERE prompt = '___ spredningen av jøder til samfunn over hele verden.'
  AND type = 'gap';
--quiz 2

-- jodedom-tro (Beliefs and Doctrines) - Question 1
UPDATE public.questions SET
  prompt_en = 'Judaism is strictly monotheistic.',
  prompt_tr = 'Yahudilik kesinlikle tektanrıcıdır.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Jødedommen er strengt monoteistisk.'
  AND type = 'tf';

-- jodedom-tro - Question 2
UPDATE public.questions SET
  prompt_en = 'A central concept is the ___ (brit) between God and the Jewish people.',
  prompt_tr = 'Merkezi bir kavram, Tanrı ve Yahudi halkı arasındaki ___ (brit)''dir.',
  meta_en = '{"answer":"covenant"}'::jsonb,
  meta_tr = '{"answer":"ahit"}'::jsonb
WHERE prompt = 'Et sentralt konsept er ___ (brit) mellom Gud og det jødiske folk.'
  AND type = 'gap';

-- jodedom-tro - Question 3
UPDATE public.questions SET
  prompt_en = 'How many commandments or mitzvot do Jews have according to tradition?',
  prompt_tr = 'Geleneğe göre Yahudilerin kaç emir veya mitsvası vardır?',
  meta_en = '{"choices":[
    {"id":"a","text":"10"},
    {"id":"b","text":"248"},
    {"id":"c","text":"613","correct":true}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"10"},
    {"id":"b","text":"248"},
    {"id":"c","text":"613","correct":true}
  ]}'::jsonb
WHERE prompt = 'Hvor mange bud eller mitsvot har jøder ifølge tradisjonen?'
  AND type = 'mcq';

-- jodedom-tro - Question 4
UPDATE public.questions SET
  prompt_en = 'Judaism has a concept of original sin.',
  prompt_tr = 'Yahudilikte ilk günah kavramı vardır.',
  meta_en = '{"answer": false}'::jsonb,
  meta_tr = '{"answer": false}'::jsonb
WHERE prompt = 'Jødedommen har et konsept om arvesynd.'
  AND type = 'tf';

-- jodedom-tro - Question 5
UPDATE public.questions SET
  prompt_en = 'What is emphasized most in Judaism?',
  prompt_tr = 'Yahudilikte en çok neye vurgu yapılır?',
  meta_en = '{"choices":[
    {"id":"a","text":"Action and righteous living","correct":true},
    {"id":"b","text":"Only faith and dogmas"},
    {"id":"c","text":"Only rituals"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Eylem ve doğru yaşam","correct":true},
    {"id":"b","text":"Sadece inanç ve dogmalar"},
    {"id":"c","text":"Sadece ritüeller"}
  ]}'::jsonb
WHERE prompt = 'Hva vektlegges mest i jødedommen?'
  AND type = 'mcq';

-- jodedom-tro - Question 6
UPDATE public.questions SET
  prompt_en = 'The Day of Atonement is called ___ in Hebrew.',
  prompt_tr = 'Kefaret Günü İbranice''de ___ olarak adlandırılır.',
  meta_en = '{"answer":"Yom Kippur"}'::jsonb,
  meta_tr = '{"answer":"Yom Kippur"}'::jsonb
WHERE prompt = 'Forsoningsdagen heter ___ på hebraisk.'
  AND type = 'gap';

-- jodedom-tro - Question 7
UPDATE public.questions SET
  prompt_en = 'Traditionally, Jews await a Messiah who will bring peace and freedom.',
  prompt_tr = 'Geleneksel olarak Yahudiler, barış ve özgürlük getirecek bir Mesih beklerler.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Tradisjonelt venter jøder på en Messias som skal skape fred og frihet.'
  AND type = 'tf';
-- jodedom-praksis (Practices) - Question 1
UPDATE public.questions SET
  prompt_en = 'How many times a day are traditional prayers in Judaism?',
  prompt_tr = 'Yahudilikte geleneksel dualar günde kaç kez kılınır?',
  meta_en = '{"choices":[
    {"id":"a","text":"Once"},
    {"id":"b","text":"Three times","correct":true},
    {"id":"c","text":"Five times"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Bir kez"},
    {"id":"b","text":"Üç kez","correct":true},
    {"id":"c","text":"Beş kez"}
  ]}'::jsonb
WHERE prompt = 'Hvor mange ganger om dagen er tradisjonelle bønner i jødedommen?'
  AND type = 'mcq';

-- jodedom-praksis - Question 2
UPDATE public.questions SET
  prompt_en = '___ is the Jewish skullcap that men often cover their heads with.',
  prompt_tr = '___, erkeklerin sıklıkla başlarını örttüğü Yahudi takke''sidir.',
  meta_en = '{"answer":"Kippah"}'::jsonb,
  meta_tr = '{"answer":"Kipa"}'::jsonb
WHERE prompt = '___ er den jødiske kalottes som menn ofte dekker hodet med.'
  AND type = 'gap';

-- jodedom-praksis - Question 3
UPDATE public.questions SET
  prompt_en = 'The Sabbath (Shabbat) is the most important weekly day of rest and lasts from Friday evening to Saturday evening.',
  prompt_tr = 'Şabat (Şabat), en önemli haftalık dinlenme günüdür ve Cuma akşamından Cumartesi akşamına kadar sürer.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Sabbaten (shabbat) er den viktigste ukentlige hviledagen og varer fra fredag kveld til lørdag kveld.'
  AND type = 'tf';

-- jodedom-praksis - Question 4
UPDATE public.questions SET
  prompt_en = 'Which food is not kosher?',
  prompt_tr = 'Hangi yiyecek koşer değildir?',
  meta_en = '{"choices":[
    {"id":"a","text":"Chicken"},
    {"id":"b","text":"Fish with scales"},
    {"id":"c","text":"Pork","correct":true}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Tavuk"},
    {"id":"b","text":"Pullu balık"},
    {"id":"c","text":"Domuz eti","correct":true}
  ]}'::jsonb
WHERE prompt = 'Hvilket mat er ikke kosher?'
  AND type = 'mcq';

-- jodedom-praksis - Question 5
UPDATE public.questions SET
  prompt_en = 'Boys are circumcised on their eighth day of life in the ritual called ___.',
  prompt_tr = 'Erkek çocuklar yaşamlarının sekizinci gününde ___ adlı ritüelde sünnet edilirler.',
  meta_en = '{"answer":"brit milah"}'::jsonb,
  meta_tr = '{"answer":"brit milah"}'::jsonb
WHERE prompt = 'Gutter blir omskåret på sin åttende levedag i ritualet kalt ___.'
  AND type = 'gap';

-- jodedom-praksis - Question 6
UPDATE public.questions SET
  prompt_en = 'At what age do Jews celebrate bar/bat mitzvah?',
  prompt_tr = 'Yahudiler bar/bat mitsva''yı kaç yaşında kutlarlar?',
  meta_en = '{"choices":[
    {"id":"a","text":"8 years"},
    {"id":"b","text":"12-13 years","correct":true},
    {"id":"c","text":"18 years"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"8 yaşında"},
    {"id":"b","text":"12-13 yaşında","correct":true},
    {"id":"c","text":"18 yaşında"}
  ]}'::jsonb
WHERE prompt = 'Ved hvilken alder feirer jøder bar/bat mitzva?'
  AND type = 'mcq';

-- jodedom-praksis - Question 7
UPDATE public.questions SET
  prompt_en = 'During the Sabbath, one should refrain from work and worldly activities.',
  prompt_tr = 'Şabat sırasında kişi çalışmaktan ve dünyevi faaliyetlerden kaçınmalıdır.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Under sabbaten skal man avstå fra arbeid og verdslige sysler.'
  AND type = 'tf';
---quiz 4
-- jodedom-hoytider (Holidays) - Question 1
UPDATE public.questions SET
  prompt_en = '___ (Passover) is the spring festival commemorating the Exodus from Egypt.',
  prompt_tr = '___ (Hamursuz Bayramı), Mısır''dan çıkışı anma bahar festivalidir.',
  meta_en = '{"answer":"Pesach"}'::jsonb,
  meta_tr = '{"answer":"Pesah"}'::jsonb
WHERE prompt = '___ (påske) er vårfesten til minne om utgangen fra Egypt.'
  AND type = 'gap';

-- jodedom-hoytider - Question 2
UPDATE public.questions SET
  prompt_en = 'What is Yom Kippur?',
  prompt_tr = 'Yom Kippur nedir?',
  meta_en = '{"choices":[
    {"id":"a","text":"Festival of Lights"},
    {"id":"b","text":"Day of Atonement","correct":true},
    {"id":"c","text":"New Year"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Işık Festivali"},
    {"id":"b","text":"Kefaret Günü","correct":true},
    {"id":"c","text":"Yeni Yıl"}
  ]}'::jsonb
WHERE prompt = 'Hva er Yom Kippur?'
  AND type = 'mcq';

-- jodedom-hoytider - Question 3
UPDATE public.questions SET
  prompt_en = 'During Yom Kippur, Jews fast for approximately 25 hours.',
  prompt_tr = 'Yom Kippur sırasında Yahudiler yaklaşık 25 saat oruç tutarlar.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Under Yom Kippur faster jøder i cirka 25 timer.'
  AND type = 'tf';

-- jodedom-hoytider - Question 4
UPDATE public.questions SET
  prompt_en = '___ is the eight-day Festival of Lights commemorating the rededication of the Temple.',
  prompt_tr = '___, Mabedi''nin yeniden adanmasını anma sekiz günlük Işık Festivali''dir.',
  meta_en = '{"answer":"Hanukkah"}'::jsonb,
  meta_tr = '{"answer":"Hanuka"}'::jsonb
WHERE prompt = '___ er den åtte dager lange lysfesten til minne om gjeninnvielsen av Tempelet.'
  AND type = 'gap';

-- jodedom-hoytider - Question 5
UPDATE public.questions SET
  prompt_en = 'Which horn is blown during Rosh Hashanah?',
  prompt_tr = 'Roş Aşana sırasında hangi boru çalınır?',
  meta_en = '{"choices":[
    {"id":"a","text":"Trumpet"},
    {"id":"b","text":"Shofar","correct":true},
    {"id":"c","text":"Flute"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Trompet"},
    {"id":"b","text":"Şofar","correct":true},
    {"id":"c","text":"Flüt"}
  ]}'::jsonb
WHERE prompt = 'Hvilket horn blåses under Rosh Hashana?'
  AND type = 'mcq';

-- jodedom-hoytider - Question 6
UPDATE public.questions SET
  prompt_en = 'Purim is celebrated in memory of Queen Esther''s rescue of the Jews in Persia.',
  prompt_tr = 'Purim, Kraliçe Ester''in Pers''teki Yahudileri kurtarmasının anısına kutlanır.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Purim feires til minne om dronning Esters redning av jødene i Persia.'
  AND type = 'tf';

-- jodedom-hoytider - Question 7
UPDATE public.questions SET
  prompt_en = 'What do families build during Sukkot?',
  prompt_tr = 'Aileler Sukkot sırasında ne inşa ederler?',
  meta_en = '{"choices":[
    {"id":"a","text":"Snow huts"},
    {"id":"b","text":"Leaf booths","correct":true},
    {"id":"c","text":"Tents"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Kar kulübeleri"},
    {"id":"b","text":"Yaprak çardaklar","correct":true},
    {"id":"c","text":"Çadırlar"}
  ]}'::jsonb
WHERE prompt = 'Hva bygger familier under Sukkot?'
  AND type = 'mcq';

-- jodedom-hoytider - Question 8 (NEW - added from INSERT)
UPDATE public.questions SET
  prompt_en = 'Rosh Hashanah is the Jewish ___ and marks the beginning of the new year.',
  prompt_tr = 'Roş Aşana Yahudi ___''dır ve yeni yılın başlangıcını işaret eder.',
  meta_en = '{"answer":"New Year"}'::jsonb,
  meta_tr = '{"answer":"Yeni Yıl"}'::jsonb
WHERE prompt = 'Rosh Hashana er jødisk ___ og markerer begynnelsen på det nye året.'
  AND type = 'gap';
-- jodedom-tekster (Texts) - Question 1
UPDATE public.questions SET
  prompt_en = '___, also called the Hebrew Bible, is Judaism''s most important collection of sacred scriptures.',
  prompt_tr = '___, İbranice İncil olarak da adlandırılır, Yahudiliğin en önemli kutsal yazılar koleksiyonudur.',
  meta_en = '{"answer":"Tanakh"}'::jsonb,
  meta_tr = '{"answer":"Tanah"}'::jsonb
WHERE prompt ILIKE '%hebraiske bibel%'
  AND type = 'gap';


-- jodedom-tekster - Question 2
UPDATE public.questions SET
  prompt_en = 'What does the Tanakh consist of?',
  prompt_tr = 'Tanah nelerden oluşur?',
  meta_en = '{"choices":[
    {"id":"a","text":"Only the Torah"},
    {"id":"b","text":"Torah, Nevi''im and Ketuvim","correct":true},
    {"id":"c","text":"Only the Talmud"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Sadece Tevrat"},
    {"id":"b","text":"Tevrat, Neviim ve Ketuvim","correct":true},
    {"id":"c","text":"Sadece Talmud"}
  ]}'::jsonb
WHERE prompt = 'Hva består Tanakh av?'
  AND type = 'mcq';

-- jodedom-tekster - Question 3
UPDATE public.questions SET
  prompt_en = 'The Torah consists of the five Books of Moses.',
  prompt_tr = 'Tevrat, Musa''nın beş kitabından oluşur.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Toraen består av de fem Mosebøkene.'
  AND type = 'tf';

-- jodedom-tekster - Question 4
UPDATE public.questions SET
  prompt_en = '___ is an extensive collection of oral laws and interpretations that was written down around 200-500 CE.',
  prompt_tr = '___, MS 200-500 civarında yazıya geçirilen sözlü yasalar ve yorumların kapsamlı bir koleksiyonudur.',
  meta_en = '{"answer":"Talmud"}'::jsonb,
  meta_tr = '{"answer":"Talmud"}'::jsonb
WHERE prompt = '___ er en omfattende samling av muntlige lover og tolkninger som ble nedskrevet ca. 200-500 evt.'
  AND type = 'gap';

-- jodedom-tekster - Question 5
UPDATE public.questions SET
  prompt_en = 'What is the Star of David?',
  prompt_tr = 'Davut Yıldızı nedir?',
  meta_en = '{"choices":[
    {"id":"a","text":"A five-pointed star"},
    {"id":"b","text":"A six-pointed star formed by two triangles","correct":true},
    {"id":"c","text":"An eight-pointed star"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Beş köşeli bir yıldız"},
    {"id":"b","text":"İki üçgenden oluşan altı köşeli bir yıldız","correct":true},
    {"id":"c","text":"Sekiz köşeli bir yıldız"}
  ]}'::jsonb
WHERE prompt = 'Hva er Davidstjernen?'
  AND type = 'mcq';

-- jodedom-tekster - Question 6
UPDATE public.questions SET
  prompt_en = 'The menorah is a seven-branched candelabra that is one of the oldest symbols in Judaism.',
  prompt_tr = 'Menora, Yahudilikteki en eski sembollerden biri olan yedi kollu bir şamdandır.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Menoraen er en syvarmet ljusstake som er et av de eldste symbolene i jødedommen.'
  AND type = 'tf';

-- jodedom-tekster - Question 7
UPDATE public.questions SET
  prompt_en = 'A ___ is a small container with scripture that hangs on the doorframe in Jewish homes.',
  prompt_tr = '___, Yahudi evlerinde kapı kasasına asılan kutsal metin içeren küçük bir kutudur.',
  meta_en = '{"answer":"mezuzah"}'::jsonb,
  meta_tr = '{"answer":"mezuza"}'::jsonb
WHERE prompt = 'En ___ er en liten beholder med skriftsteder som henger på dørkarmen i jødiske hjem.'
  AND type = 'gap';

-- jodedom-tekster - Question 8 (NEW - added from INSERT)
UPDATE public.questions SET
  prompt_en = 'What is the "eternal light" that hangs lit in the synagogue called?',
  prompt_tr = 'Sinagogda yanan "ebedi ışık"a ne denir?',
  meta_en = '{"choices":[
    {"id":"a","text":"Shofar"},
    {"id":"b","text":"Ner Tamid","correct":true},
    {"id":"c","text":"Tallit"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Şofar"},
    {"id":"b","text":"Ner Tamid","correct":true},
    {"id":"c","text":"Tallit"}
  ]}'::jsonb
WHERE prompt = 'Hva kalles det "evige lys" som henger tent i synagogen?'
  AND type = 'mcq';
-- jodedom-moderne (Modern) - Question 1
UPDATE public.questions SET
  prompt_en = 'Which direction maintains that the Torah is divine and unchangeable?',
  prompt_tr = 'Hangi yön Tevrat''ın ilahi ve değiştirilemez olduğunu savunur?',
  meta_en = '{"choices":[
    {"id":"a","text":"Reform Judaism"},
    {"id":"b","text":"Orthodox Judaism","correct":true},
    {"id":"c","text":"Humanistic Judaism"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Reform Yahudilik"},
    {"id":"b","text":"Ortodoks Yahudilik","correct":true},
    {"id":"c","text":"Hümanist Yahudilik"}
  ]}'::jsonb
WHERE prompt = 'Hvilken retning holder fast ved at Toraen er guddommelig og uforanderlig?'
  AND type = 'mcq';

-- jodedom-moderne - Question 2
UPDATE public.questions SET
  prompt_en = 'Reform Judaism allows female rabbis.',
  prompt_tr = 'Reform Yahudilik kadın hahamlara izin verir.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Reformjødedom tillater kvinnelige rabbinere.'
  AND type = 'tf';

-- jodedom-moderne - Question 3
UPDATE public.questions SET
  prompt_en = '___ Judaism arose as a middle position between Orthodox and Reform Judaism.',
  prompt_tr = '___ Yahudilik, Ortodoks ve Reform Yahudilik arasında orta bir konum olarak ortaya çıktı.',
  meta_en = '{"answer":"Conservative"}'::jsonb,
  meta_tr = '{"answer":"Muhafazakâr"}'::jsonb
WHERE prompt = '___ jødedom oppstod som en mellomposisjon mellom ortodoks og reformert jødedom.'
  AND type = 'gap';

-- jodedom-moderne - Question 4
UPDATE public.questions SET
  prompt_en = 'When was the first female rabbi ordained?',
  prompt_tr = 'İlk kadın haham ne zaman atandı?',
  meta_en = '{"choices":[
    {"id":"a","text":"1885"},
    {"id":"b","text":"1935","correct":true},
    {"id":"c","text":"1985"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"1885"},
    {"id":"b","text":"1935","correct":true},
    {"id":"c","text":"1985"}
  ]}'::jsonb
WHERE prompt = 'Når ble den første kvinnelige rabbiner ordinert?'
  AND type = 'mcq';

-- jodedom-moderne - Question 5
UPDATE public.questions SET
  prompt_en = 'Ultra-Orthodox (Haredi) Jews live more isolated to avoid outside influence.',
  prompt_tr = 'Ultra-Ortodoks (Haredi) Yahudiler, dış etkiden kaçınmak için daha izole yaşarlar.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Ultraortodokse (haredim) lever mer isolert for å unngå påvirkning utenfra.'
  AND type = 'tf';

-- jodedom-moderne - Question 6
UPDATE public.questions SET
  prompt_en = 'What are Ashkenazi Jews?',
  prompt_tr = 'Aşkenaz Yahudileri kimlerdir?',
  meta_en = '{"choices":[
    {"id":"a","text":"Jews with origins in Europe","correct":true},
    {"id":"b","text":"Jews from Africa"},
    {"id":"c","text":"Jews from Asia"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Avrupa kökenli Yahudiler","correct":true},
    {"id":"b","text":"Afrika''dan Yahudiler"},
    {"id":"c","text":"Asya''dan Yahudiler"}
  ]}'::jsonb
WHERE prompt = 'Hva er askenasiske jøder?'
  AND type = 'mcq';

-- jodedom-moderne - Question 7
UPDATE public.questions SET
  prompt_en = 'Traditionally, a person is considered Jewish if they are born to a Jewish ___.',
  prompt_tr = 'Geleneksel olarak, bir kişi Yahudi bir ___''den doğmuşsa Yahudi kabul edilir.',
  meta_en = '{"answer":"mother"}'::jsonb,
  meta_tr = '{"answer":"anne"}'::jsonb
WHERE prompt = 'Tradisjonelt regnes en person som jøde dersom vedkommende er født av en jødisk ___.'
  AND type = 'gap';

-- jodedom-moderne - Question 8 (NEW - added from INSERT)
UPDATE public.questions SET
  prompt_en = 'One can be Jewish without being religious, as Judaism is understood both as a religion and as a people.',
  prompt_tr = 'Kişi dini olmadan da Yahudi olabilir, çünkü Yahudilik hem bir din hem de bir halk olarak anlaşılır.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Man kan være jøde uten å være religiøs, da jødedommen forstås både som religion og som et folk.'
  AND type = 'tf';
---- ==================== BUDDHISM LESSONS - CORRECTED ====================

-- buddhisme-opprinnelse (Origins) - Question 1
UPDATE public.questions SET
  prompt_en = 'Where did Buddhism originate?',
  prompt_tr = 'Budizm nerede ortaya çıktı?',
  meta_en = '{"choices":[
    {"id":"a","text":"China"},
    {"id":"b","text":"North India","correct":true},
    {"id":"c","text":"Tibet"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Çin"},
    {"id":"b","text":"Kuzey Hindistan","correct":true},
    {"id":"c","text":"Tibet"}
  ]}'::jsonb
WHERE prompt = 'Hvor oppstod buddhismen?'
  AND type = 'mcq'
  AND order_index = 0;

-- buddhisme-opprinnelse - Question 2
UPDATE public.questions SET
  prompt_en = 'Buddhism was founded by ___ Gautama, who later became known as Buddha.',
  prompt_tr = 'Budizm, daha sonra Buda olarak bilinen ___ Gautama tarafından kuruldu.',
  meta_en = '{"answer":"Siddhartha"}'::jsonb,
  meta_tr = '{"answer":"Siddhartha"}'::jsonb
WHERE prompt = 'Buddhismen ble grunnlagt av ___ Gautama, som senere ble kjent som Buddha.'
  AND type = 'gap'
  AND order_index = 1;

-- buddhisme-opprinnelse - Question 3
UPDATE public.questions SET
  prompt_en = 'Approximately how long ago did Buddhism originate?',
  prompt_tr = 'Budizm yaklaşık ne kadar zaman önce ortaya çıktı?',
  meta_en = '{"choices":[
    {"id":"a","text":"2500 years ago","correct":true},
    {"id":"b","text":"1000 years ago"},
    {"id":"c","text":"5000 years ago"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"2500 yıl önce","correct":true},
    {"id":"b","text":"1000 yıl önce"},
    {"id":"c","text":"5000 yıl önce"}
  ]}'::jsonb
WHERE prompt = 'For omtrent hvor lenge siden oppstod buddhismen?'
  AND type = 'mcq'
  AND order_index = 2;

-- buddhisme-opprinnelse - Question 4
UPDATE public.questions SET
  prompt_en = 'The early Buddhist monastic order (sangha) played a key role in spreading Buddha''s teachings.',
  prompt_tr = 'Erken Budist keşiş düzeni (sangha), Buda''nın öğretilerini yaymada kilit bir rol oynadı.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Den tidlige buddhistiske munkeordenen (sangha) spilte en nøkkelrolle i å spre Buddhas lære.'
  AND type = 'tf'
  AND order_index = 3;

-- buddhisme-opprinnelse - Question 5
UPDATE public.questions SET
  prompt_en = 'Which emperor promoted Buddhism as a state religion in the 3rd century BCE?',
  prompt_tr = 'Hangi imparator MÖ 3. yüzyılda Budizm''i devlet dini olarak teşvik etti?',
  meta_en = '{"choices":[
    {"id":"a","text":"Ashoka","correct":true},
    {"id":"b","text":"Augustus"},
    {"id":"c","text":"Constantine"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Aşoka","correct":true},
    {"id":"b","text":"Augustus"},
    {"id":"c","text":"Konstantin"}
  ]}'::jsonb
WHERE prompt = 'Hvilken keiser fremmet buddhismen som statsreligion på 200-tallet fvt?'
  AND type = 'mcq'
  AND order_index = 4;

-- buddhisme-opprinnelse - Question 6
UPDATE public.questions SET
  prompt_en = 'Which branch of Buddhism means "The Teaching of the Elders"?',
  prompt_tr = 'Budizm''in hangi dalı "Büyüklerin Öğretisi" anlamına gelir?',
  meta_en = '{"choices":[
    {"id":"a","text":"Mahayana"},
    {"id":"b","text":"Theravada","correct":true},
    {"id":"c","text":"Vajrayana"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Mahayana"},
    {"id":"b","text":"Theravada","correct":true},
    {"id":"c","text":"Vajrayana"}
  ]}'::jsonb
WHERE prompt = 'Hvilken gren av buddhismen betyr "De eldstes lære"?'
  AND type = 'mcq'
  AND order_index = 5;

-- buddhisme-opprinnelse - Question 7
UPDATE public.questions SET
  prompt_en = '___ ("The Great Vehicle") introduced new ideals such as the bodhisattva.',
  prompt_tr = '___ ("Büyük Araç"), bodhisattva gibi yeni idealler getirdi.',
  meta_en = '{"answer":"Mahayana"}'::jsonb,
  meta_tr = '{"answer":"Mahayana"}'::jsonb
WHERE prompt = '___ ("Den store vognen") introduserte nye idealer som bodhisattvaen.'
  AND type = 'gap'
  AND order_index = 6;

-- buddhisme-opprinnelse - Question 8 (new)
UPDATE public.questions SET
  prompt_en = 'Vajrayana developed with tantric practices and gained particular foothold in Tibet.',
  prompt_tr = 'Vajrayana, tantrik uygulamalarla gelişti ve özellikle Tibet''te kök saldı.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Vajrayana utviklet seg med tantriske praksiser og fikk særlig fotfeste i Tibet.'
  AND type = 'tf'
  AND order_index = 7;

-- buddhisme-tro (Beliefs) - Question 1
UPDATE public.questions SET
  prompt_en = 'Buddhism is a non-theistic religion – it does not operate with an almighty creator god.',
  prompt_tr = 'Budizm teistik olmayan bir dindir – her şeye gücü yeten bir yaratıcı tanrı kavramıyla çalışmaz.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Buddhismen er en ikke-teistisk religion – den opererer ikke med en allmektig skapergud.'
  AND type = 'tf'
  AND order_index = 0;

-- buddhisme-tro - Question 2
UPDATE public.questions SET
  prompt_en = 'What are called "the three jewels" that Buddhists seek refuge in?',
  prompt_tr = 'Budistlerin sığındığı "üç mücevher"e ne denir?',
  meta_en = '{"choices":[
    {"id":"a","text":"Buddha, Dharma, Sangha","correct":true},
    {"id":"b","text":"Karma, Nirvana, Samsara"},
    {"id":"c","text":"Zen, Tantra, Yoga"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Buda, Dharma, Sangha","correct":true},
    {"id":"b","text":"Karma, Nirvana, Samsara"},
    {"id":"c","text":"Zen, Tantra, Yoga"}
  ]}'::jsonb
WHERE prompt = 'Hva kalles "de tre juveler" som buddhister søker tilflukt i?'
  AND type = 'mcq'
  AND order_index = 1;

-- buddhisme-tro - Question 3
UPDATE public.questions SET
  prompt_en = 'How many "Noble Truths" are there in Buddhism?',
  prompt_tr = 'Budizm''de kaç "Asil Gerçek" vardır?',
  meta_en = '{"choices":[
    {"id":"a","text":"Three"},
    {"id":"b","text":"Four","correct":true},
    {"id":"c","text":"Five"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Üç"},
    {"id":"b","text":"Dört","correct":true},
    {"id":"c","text":"Beş"}
  ]}'::jsonb
WHERE prompt = 'Hvor mange "edle sannheter" er det i buddhismen?'
  AND type = 'mcq'
  AND order_index = 2;

-- buddhisme-tro - Question 4
UPDATE public.questions SET
  prompt_en = '___ is a state of complete freedom from desire, ignorance, and further rebirth.',
  prompt_tr = '_, arzudan, cehaletten ve daha fazla yeniden doğuştan tamamen özgürlük halidir.',
  meta_en = '{"answer":"Nirvana"}'::jsonb,
  meta_tr = '{"answer":"Nirvana"}'::jsonb
WHERE prompt = '___ er en tilstand av fullstendig frihet fra begjær, uvitenhet og videre gjenfødelse.'
  AND type = 'gap'
  AND order_index = 3;

-- buddhisme-tro - Question 5
UPDATE public.questions SET
  prompt_en = 'What is the cycle of rebirths that Buddhists wish to break out of called?',
  prompt_tr = 'Budistlerin kurtulmak istediği yeniden doğuş döngüsüne ne denir?',
  meta_en = '{"choices":[
    {"id":"a","text":"Karma"},
    {"id":"b","text":"Samsara","correct":true},
    {"id":"c","text":"Dharma"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Karma"},
    {"id":"b","text":"Samsara","correct":true},
    {"id":"c","text":"Dharma"}
  ]}'::jsonb
WHERE prompt = 'Hva kalles rekken av gjenfødelser som buddhister ønsker å bryte ut av?'
  AND type = 'mcq'
  AND order_index = 4;

-- buddhisme-tro - Question 6
UPDATE public.questions SET
  prompt_en = 'Unlike Hinduism, Buddhism teaches that there is no eternal soul or fixed "self" (anatman).',
  prompt_tr = 'Hinduizm''den farklı olarak Budizm, ebedi bir ruh veya sabit bir "benlik" olmadığını öğretir (anatman).',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'I motsetning til hinduismen lærer buddhismen at det ikke finnes noen evig sjel eller et fast "selv" (anatman).'
  AND type = 'tf'
  AND order_index = 5;

-- buddhisme-tro - Question 7
UPDATE public.questions SET
  prompt_en = 'How many ethical precepts does Buddhism have?',
  prompt_tr = 'Budizm''in kaç etik ilkesi vardır?',
  meta_en = '{"choices":[
    {"id":"a","text":"Three"},
    {"id":"b","text":"Five","correct":true},
    {"id":"c","text":"Ten"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Üç"},
    {"id":"b","text":"Beş","correct":true},
    {"id":"c","text":"On"}
  ]}'::jsonb
WHERE prompt = 'Hvor mange etiske leveregler har buddhismen?'
  AND type = 'mcq'
  AND order_index = 6;

-- buddhisme-tro - Question 8 (new)
UPDATE public.questions SET
  prompt_en = 'A ___ is an enlightened person who chooses to postpone their final nirvana to help all other beings.',
  prompt_tr = '_, tüm diğer varlıklara yardım etmek için nihai nirvanasını ertelemeyi seçen aydınlanmış bir kişidir.',
  meta_en = '{"answer":"bodhisattva"}'::jsonb,
  meta_tr = '{"answer":"bodhisattva"}'::jsonb
WHERE prompt = 'En ___ er en opplyst person som velger å utsette sin endelige nirvana for å hjelpe alle andre vesener.'
  AND type = 'gap'
  AND order_index = 7;

-- buddhisme-praksis (Practices) - Question 1
UPDATE public.questions SET
  prompt_en = 'What is a core practice in all Buddhist traditions?',
  prompt_tr = 'Tüm Budist geleneklerde temel uygulama nedir?',
  meta_en = '{"choices":[
    {"id":"a","text":"Meditation","correct":true},
    {"id":"b","text":"Pilgrimages"},
    {"id":"c","text":"Fasting"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Meditasyon","correct":true},
    {"id":"b","text":"Hac ziyaretleri"},
    {"id":"c","text":"Oruç"}
  ]}'::jsonb
WHERE prompt = 'Hva er en kjernepraksis i alle buddhistiske retninger?'
  AND type = 'mcq'
  AND order_index = 0;

-- buddhisme-praksis - Question 2
UPDATE public.questions SET
  prompt_en = 'In the Theravada tradition, monks recite protective texts called ___.',
  prompt_tr = 'Theravada geleneğinde keşişler ___ adı verilen koruyucu metinleri okurlar.',
  meta_en = '{"answer":"paritta"}'::jsonb,
  meta_tr = '{"answer":"paritta"}'::jsonb
WHERE prompt = 'I Theravada-tradisjonen resiterer munker beskyttende tekster som kalles ___.'
  AND type = 'gap'
  AND order_index = 1;

-- buddhisme-praksis - Question 3
UPDATE public.questions SET
  prompt_en = 'In Vajrayana, esoteric methods such as mantras and mandala images are used in meditation.',
  prompt_tr = 'Vajrayana''da meditasyonda mantra ve mandala görselleri gibi ezoterik yöntemler kullanılır.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'I Vajrayana benyttes esoteriske metoder som mantraer og mandala-bilder i meditasjonen.'
  AND type = 'tf'
  AND order_index = 2;

-- buddhisme-praksis - Question 4
UPDATE public.questions SET
  prompt_en = 'What is the name of the place where Buddha attained enlightenment?',
  prompt_tr = 'Buda''nın aydınlanmaya ulaştığı yerin adı nedir?',
  meta_en = '{"choices":[
    {"id":"a","text":"Lumbini"},
    {"id":"b","text":"Bodh Gaya","correct":true},
    {"id":"c","text":"Varanasi"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Lumbini"},
    {"id":"b","text":"Bodh Gaya","correct":true},
    {"id":"c","text":"Varanasi"}
  ]}'::jsonb
WHERE prompt = 'Hva er navnet på stedet der Buddha oppnådde oppvåkning?'
  AND type = 'mcq'
  AND order_index = 3;

-- buddhisme-praksis - Question 5
UPDATE public.questions SET
  prompt_en = 'Monks and nuns live by strict rules called ___.',
  prompt_tr = 'Keşişler ve rahibeler ___ adı verilen katı kurallara göre yaşarlar.',
  meta_en = '{"answer":"vinaya"}'::jsonb,
  meta_tr = '{"answer":"vinaya"}'::jsonb
WHERE prompt = 'Munker og nonner lever etter strenge regler som kalles ___.'
  AND type = 'gap'
  AND order_index = 4;

-- buddhisme-praksis - Question 6
UPDATE public.questions SET
  prompt_en = 'Laypeople support the monasteries through alms and receive guidance and blessings in return.',
  prompt_tr = 'Müritleri manastırları sadaka yoluyla destekler ve karşılığında rehberlik ve bereket alır.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Lekfolk støtter klostrene gjennom almisser og får veiledning og velsignelser til gjengjeld.'
  AND type = 'tf'
  AND order_index = 5;

-- buddhisme-praksis - Question 7
UPDATE public.questions SET
  prompt_en = 'What ritual offerings are often used in Buddhist temples?',
  prompt_tr = 'Budist tapınaklarında genellikle hangi ritüel sunular kullanılır?',
  meta_en = '{"choices":[
    {"id":"a","text":"Light, incense, and flowers","correct":true},
    {"id":"b","text":"Wine, bread, and salt"},
    {"id":"c","text":"Gold, silver, and gemstones"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Işık, tütsü ve çiçekler","correct":true},
    {"id":"b","text":"Şarap, ekmek ve tuz"},
    {"id":"c","text":"Altın, gümüş ve değerli taşlar"}
  ]}'::jsonb
WHERE prompt = 'Hvilke rituelle gaver brukes ofte i buddhistiske templer?'
  AND type = 'mcq'
  AND order_index = 6;

-- buddhisme-hoytider (Holidays) - Question 1
UPDATE public.questions SET
  prompt_en = 'What is the most important Buddhist holiday?',
  prompt_tr = 'En önemli Budist tatili nedir?',
  meta_en = '{"choices":[
    {"id":"a","text":"Vesak","correct":true},
    {"id":"b","text":"Ullambana"},
    {"id":"c","text":"Obon"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Vesak","correct":true},
    {"id":"b","text":"Ullambana"},
    {"id":"c","text":"Obon"}
  ]}'::jsonb
WHERE prompt = 'Hva er den viktigste buddhistiske høytiden?'
  AND type = 'mcq'
  AND order_index = 0;

-- buddhisme-hoytider - Question 2
UPDATE public.questions SET
  prompt_en = 'Vesak is celebrated in memory of Buddha''s birth, enlightenment, and death.',
  prompt_tr = 'Vesak, Buda''nın doğumu, aydınlanması ve ölümü anısına kutlanır.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Vesak feires til minne om Buddhas fødsel, oppvåkning og død.'
  AND type = 'tf'
  AND order_index = 1;

-- buddhisme-hoytider - Question 3
UPDATE public.questions SET
  prompt_en = 'When is Vesak typically celebrated?',
  prompt_tr = 'Vesak genellikle ne zaman kutlanır?',
  meta_en = '{"choices":[
    {"id":"a","text":"On the full moon day in April-May","correct":true},
    {"id":"b","text":"On the winter moon day in December"},
    {"id":"c","text":"On New Year''s Eve"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Nisan-Mayıs ayında dolunay günü","correct":true},
    {"id":"b","text":"Aralık ayında kış dolunayı günü"},
    {"id":"c","text":"Yılbaşı gecesi"}
  ]}'::jsonb
WHERE prompt = 'Når feires Vesak vanligvis?'
  AND type = 'mcq'
  AND order_index = 2;

-- buddhisme-hoytider - Question 4
UPDATE public.questions SET
  prompt_en = 'In Mahayana traditions, the New Year celebration usually coincides with the traditional ___ in January-February.',
  prompt_tr = 'Mahayana geleneklerinde Yeni Yıl kutlaması genellikle Ocak-Şubat aylarındaki geleneksel ___ ile aynı zamana denk gelir.',
  meta_en = '{"answer":"lunar new year"}'::jsonb,
  meta_tr = '{"answer":"ay yılı"}'::jsonb
WHERE prompt = 'I mahayana-tradisjoner faller nyttårsfeiringen som regel sammen med det tradisjonelle ___ i januar–februar.'
  AND type = 'gap'
  AND order_index = 3;

-- buddhisme-hoytider - Question 5
UPDATE public.questions SET
  prompt_en = 'What is the annual holiday for honoring deceased souls in Mahayana Buddhism called?',
  prompt_tr = 'Mahayana Budizmi''nde ölen ruhları onurlandırmak için yapılan yıllık tatile ne denir?',
  meta_en = '{"choices":[
    {"id":"a","text":"Vesak"},
    {"id":"b","text":"Ullambana","correct":true},
    {"id":"c","text":"Bodhi Day"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Vesak"},
    {"id":"b","text":"Ullambana","correct":true},
    {"id":"c","text":"Bodhi Günü"}
  ]}'::jsonb
WHERE prompt = 'Hva kalles den årlige høytiden for å ære avdøde sjeler i Mahayana-buddhismen?'
  AND type = 'mcq'
  AND order_index = 4;

-- buddhisme-hoytider - Question 6
UPDATE public.questions SET
  prompt_en = 'During Ullambana, families gather in temples to pray for deceased relatives.',
  prompt_tr = 'Ullambana sırasında aileler ölen akrabalar için dua etmek üzere tapınaklarda toplanır.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Under Ullambana samles familier i templene for å be for avdøde slektninger.'
  AND type = 'tf'
  AND order_index = 5;

-- buddhisme-hoytider - Question 7
UPDATE public.questions SET
  prompt_en = 'How is Vesak marked?',
  prompt_tr = 'Vesak nasıl kutlanır?',
  meta_en = '{"choices":[
    {"id":"a","text":"With lanterns, light decorations, and temple visits","correct":true},
    {"id":"b","text":"With fasting and meditation in solitary cell"},
    {"id":"c","text":"With dance and song"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Fenerler, ışık süslemeleri ve tapınak ziyaretleriyle","correct":true},
    {"id":"b","text":"Yalnız hücrede oruç ve meditasyonla"},
    {"id":"c","text":"Dans ve şarkıyla"}
  ]}'::jsonb
WHERE prompt = 'Hvordan markeres Vesak?'
  AND type = 'mcq'
  AND order_index = 6;

-- buddhisme-tekster (Texts) - Question 1
UPDATE public.questions SET
  prompt_en = 'What is Buddhism''s oldest text collection called?',
  prompt_tr = 'Budizm''in en eski metin koleksiyonuna ne denir?',
  meta_en = '{"choices":[
    {"id":"a","text":"Tripitaka","correct":true},
    {"id":"b","text":"The Vedas"},
    {"id":"c","text":"Bhagavad Gita"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Tripitaka","correct":true},
    {"id":"b","text":"Vedalar"},
    {"id":"c","text":"Bhagavad Gita"}
  ]}'::jsonb
WHERE prompt = 'Hva kalles buddhismens eldste tekstsamling?'
  AND type = 'mcq'
  AND order_index = 0;

-- buddhisme-tekster - Question 2
UPDATE public.questions SET
  prompt_en = 'Tripitaka means "three ___" in Sanskrit.',
  prompt_tr = 'Tripitaka Sanskritçe''de "üç ___" anlamına gelir.',
  meta_en = '{"answer":"baskets"}'::jsonb,
  meta_tr = '{"answer":"sepet"}'::jsonb
WHERE prompt = 'Tripitaka betyr "tre ___" på sanskrit.'
  AND type = 'gap'
  AND order_index = 1;

-- buddhisme-tekster - Question 3
UPDATE public.questions SET
  prompt_en = 'How many collections does the Tripitaka consist of?',
  prompt_tr = 'Tripitaka kaç koleksiyondan oluşur?',
  meta_en = '{"choices":[
    {"id":"a","text":"Two"},
    {"id":"b","text":"Three","correct":true},
    {"id":"c","text":"Five"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"İki"},
    {"id":"b","text":"Üç","correct":true},
    {"id":"c","text":"Beş"}
  ]}'::jsonb
WHERE prompt = 'Hvor mange samlinger består Tripitaka av?'
  AND type = 'mcq'
  AND order_index = 2;

-- buddhisme-tekster - Question 4
UPDATE public.questions SET
  prompt_en = 'The Dharma Wheel is a wheel with eight spokes representing Buddha''s teachings and the Noble Eightfold Path.',
  prompt_tr = 'Dharma Tekerleği, Buda''nın öğretilerini ve Asil Sekiz Katlı Yol''u temsil eden sekiz çubuklu bir tekerlektir.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Dharmahjulet er et hjul med åtte eiker som representerer Buddhas lære og den edle åttedelte veien.'
  AND type = 'tf'
  AND order_index = 3;

-- buddhisme-tekster - Question 5
UPDATE public.questions SET
  prompt_en = 'What does the lotus flower symbolize in Buddhism?',
  prompt_tr = 'Lotus çiçeği Budizm''de neyi sembolize eder?',
  meta_en = '{"choices":[
    {"id":"a","text":"Power and wealth"},
    {"id":"b","text":"Purity and enlightenment","correct":true},
    {"id":"c","text":"Sorrow and suffering"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Güç ve zenginlik"},
    {"id":"b","text":"Saflık ve aydınlanma","correct":true},
    {"id":"c","text":"Üzüntü ve acı"}
  ]}'::jsonb
WHERE prompt = 'Hva symboliserer lotusblomsten i buddhismen?'
  AND type = 'mcq'
  AND order_index = 4;

-- buddhisme-tekster - Question 6
UPDATE public.questions SET
  prompt_en = 'Buddha sat under the ___ when he became enlightened.',
  prompt_tr = 'Buda aydınlandığında ___ altında oturuyordu.',
  meta_en = '{"answer":"Bodhi tree"}'::jsonb,
  meta_tr = '{"answer":"Bodhi ağacı"}'::jsonb
WHERE prompt = 'Buddha satt under ___ da han ble opplyst.'
  AND type = 'gap'
  AND order_index = 5;

-- buddhisme-tekster - Question 7
UPDATE public.questions SET
  prompt_en = 'Which sutras did Mahayana Buddhism introduce?',
  prompt_tr = 'Mahayana Budizmi hangi sutraları getirdi?',
  meta_en = '{"choices":[
    {"id":"a","text":"The Lotus Sutra and the Heart Sutra","correct":true},
    {"id":"b","text":"The Vedas and the Upanishads"},
    {"id":"c","text":"Torah and Talmud"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Lotus Sutra ve Kalp Sutra","correct":true},
    {"id":"b","text":"Vedalar ve Upanişadlar"},
    {"id":"c","text":"Tevrat ve Talmud"}
  ]}'::jsonb
WHERE prompt = 'Hvilke sutraer introduserte Mahayana-buddhismen?'
  AND type = 'mcq'
  AND order_index = 6;

-- buddhisme-moderne (Modern) - Question 1
UPDATE public.questions SET
  prompt_en = 'What percentage of the world''s population are Buddhists?',
  prompt_tr = 'Dünya nüfusunun yüzde kaçı Budist''tir?',
  meta_en = '{"choices":[
    {"id":"a","text":"About seven percent","correct":true},
    {"id":"b","text":"About fifteen percent"},
    {"id":"c","text":"About twenty percent"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Yaklaşık yüzde yedi","correct":true},
    {"id":"b","text":"Yaklaşık yüzde on beş"},
    {"id":"c","text":"Yaklaşık yüzde yirmi"}
  ]}'::jsonb
WHERE prompt = 'Hvor stor prosent av jordens befolkning er buddhister?'
  AND type = 'mcq'
  AND order_index = 0;

-- buddhisme-moderne - Question 2
UPDATE public.questions SET
  prompt_en = 'Today, around 98% of Buddhists still live in Asia.',
  prompt_tr = 'Bugün Budistlerin yaklaşık %98''i hala Asya''da yaşıyor.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'I dag bor omkring 98% av buddhistene fortsatt i Asia.'
  AND type = 'tf'
  AND order_index = 1;

-- buddhisme-moderne - Question 3
UPDATE public.questions SET
  prompt_en = 'In ___, Buddhism is closely tied to national identity, and the Dalai Lama functions as leader.',
  prompt_tr = '_''te Budizm ulusal kimlikle yakından bağlantılıdır ve Dalai Lama lider olarak görev yapar.',
  meta_en = '{"answer":"Tibet"}'::jsonb,
  meta_tr = '{"answer":"Tibet"}'::jsonb
WHERE prompt = 'I ___ er buddhismen tett knyttet til nasjonal identitet, og Dalai Lama fungerer som leder.'
  AND type = 'gap'
  AND order_index = 2;

-- buddhisme-moderne - Question 4
UPDATE public.questions SET
  prompt_en = 'How many Buddhists lived in Norway in 2018?',
  prompt_tr = '2018''de Norveç''te kaç Budist yaşıyordu?',
  meta_en = '{"choices":[
    {"id":"a","text":"Around 10,000"},
    {"id":"b","text":"Around 40,000","correct":true},
    {"id":"c","text":"Around 100,000"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Yaklaşık 10.000"},
    {"id":"b","text":"Yaklaşık 40.000","correct":true},
    {"id":"c","text":"Yaklaşık 100.000"}
  ]}'::jsonb
WHERE prompt = 'Hvor mange buddhister bodde i Norge i 2018?'
  AND type = 'mcq'
  AND order_index = 3;

-- buddhisme-moderne - Question 5
UPDATE public.questions SET
  prompt_en = 'Who was the Vietnamese monk who conducted nonviolent peace work during the Vietnam War?',
  prompt_tr = 'Vietnam Savaşı sırasında şiddetsiz barış çalışması yürüten Vietnamlı keşiş kimdi?',
  meta_en = '{"choices":[
    {"id":"a","text":"Dalai Lama"},
    {"id":"b","text":"Thich Nhat Hanh","correct":true},
    {"id":"c","text":"Ashoka"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Dalai Lama"},
    {"id":"b","text":"Thich Nhat Hanh","correct":true},
    {"id":"c","text":"Aşoka"}
  ]}'::jsonb
WHERE prompt = 'Hvem var den vietnamesiske munken som drev ikkevoldelig fredsarbeid under Vietnamkrigen?'
  AND type = 'mcq'
  AND order_index = 4;

-- buddhisme-moderne - Question 6
UPDATE public.questions SET
  prompt_en = 'Engaged Buddhism combines religious practice with social activism, environmental protection, and peace work.',
  prompt_tr = 'Engaged Budizm, dini uygulamayı sosyal aktivizm, çevre koruma ve barış çalışmasıyla birleştirir.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Engasjert buddhisme forener religiøs praksis med sosial aktivisme, miljøvern og fredsarbeid.'
  AND type = 'tf'
  AND order_index = 5;

-- buddhisme-moderne - Question 7
UPDATE public.questions SET
  prompt_en = 'Which values are emphasized in modern Buddhism?',
  prompt_tr = 'Modern Budizm''de hangi değerler vurgulanır?',
  meta_en = '{"choices":[
    {"id":"a","text":"Compassion, non-violence, and a simple lifestyle","correct":true},
    {"id":"b","text":"Power, wealth, and prestige"},
    {"id":"c","text":"Revenge, punishment, and dominance"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Merhamet, şiddetsizlik ve sade yaşam tarzı","correct":true},
    {"id":"b","text":"Güç, zenginlik ve prestij"},
    {"id":"c","text":"İntikam, ceza ve tahakküm"}
  ]}'::jsonb
WHERE prompt = 'Hvilke verdier vektlegges i moderne buddhisme?'
  AND type = 'mcq'
  AND order_index = 6;