-- Add English and Turkish translations for ALL quiz questions
-- This migration adds prompt_en, prompt_tr, meta_en, and meta_tr for all questions
-- that currently only have Norwegian text

-- ==================== CHRISTIANITY LESSONS ====================

-- kristendom-opprinnelse (Origins) - Question 1
UPDATE public.questions SET
  prompt_en = 'When did Christianity originate?',
  prompt_tr = 'Hıristiyanlık ne zaman ortaya çıktı?',
  meta_en = '{"choices":[
    {"id":"a","text":"Around year 30 CE","correct":true},
    {"id":"b","text":"Around year 100 BCE"},
    {"id":"c","text":"Around year 500 CE"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"MS 30 civarında","correct":true},
    {"id":"b","text":"MÖ 100 civarında"},
    {"id":"c","text":"MS 500 civarında"}
  ]}'::jsonb
WHERE prompt = 'Når oppsto kristendommen?'
  AND type = 'mcq';

-- kristendom-opprinnelse - Question 2
UPDATE public.questions SET
  prompt_en = 'Where did Christianity originate?',
  prompt_tr = 'Hıristiyanlık nerede ortaya çıktı?',
  meta_en = '{"choices":[
    {"id":"a","text":"In Egypt"},
    {"id":"b","text":"In Jewish Palestine","correct":true},
    {"id":"c","text":"In Rome"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Mısır''da"},
    {"id":"b","text":"Yahudi Filistin''inde","correct":true},
    {"id":"c","text":"Roma''da"}
  ]}'::jsonb
WHERE prompt = 'Hvor oppsto kristendommen?'
  AND type = 'mcq';

-- kristendom-opprinnelse - Question 3
UPDATE public.questions SET
  prompt_en = 'Jesus was executed by crucifixion, but his followers proclaimed that he rose from the dead.',
  prompt_tr = 'İsa çarmıha gerilerek idam edildi, ancak takipçileri onun ölümden dirildiğini ilan etti.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Jesus ble henrettet ved korsfestelse, men hans tilhengere forkynte at han stod opp fra de døde.'
  AND type = 'tf';

-- kristendom-opprinnelse - Question 4
UPDATE public.questions SET
  prompt_en = 'Which emperor introduced religious freedom and ended the persecution of Christians in 313 CE?',
  prompt_tr = 'Hangi imparator MS 313''te dini özgürlüğü getirdi ve Hıristiyanların zulmünü sona erdirdi?',
  meta_en = '{"choices":[
    {"id":"a","text":"Augustus"},
    {"id":"b","text":"Constantine the Great","correct":true},
    {"id":"c","text":"Nero"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Augustus"},
    {"id":"b","text":"Büyük Konstantin","correct":true},
    {"id":"c","text":"Neron"}
  ]}'::jsonb
WHERE prompt = 'Hvilken keiser innførte religionsfrihet og gjorde slutt på forfølgelsene av kristne i 313 e.Kr.?'
  AND type = 'mcq';

-- kristendom-opprinnelse - Question 5
UPDATE public.questions SET
  prompt_en = 'In ___ CE, Emperor Theodosius declared Christianity the Roman state religion.',
  prompt_tr = 'MS ___ yılında İmparator Theodosius Hıristiyanlığı Roma devlet dini ilan etti.',
  meta_en = '{"answer":"380"}'::jsonb,
  meta_tr = '{"answer":"380"}'::jsonb
WHERE prompt = 'I ___ e.Kr. erklærte keiser Theodosius kristendommen som romersk statsreligion.'
  AND type = 'gap';

-- kristendom-opprinnelse - Question 6
UPDATE public.questions SET
  prompt_en = 'When did the Great Schism between the Western Church and the Eastern Church occur?',
  prompt_tr = 'Batı Kilisesi ve Doğu Kilisesi arasındaki Büyük Ayrılık ne zaman gerçekleşti?',
  meta_en = '{"choices":[
    {"id":"a","text":"1054","correct":true},
    {"id":"b","text":"1517"},
    {"id":"c","text":"313"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"1054","correct":true},
    {"id":"b","text":"1517"},
    {"id":"c","text":"313"}
  ]}'::jsonb
WHERE prompt = 'Når skjedde det store skisma mellom Vestkirken og Østkirken?'
  AND type = 'mcq';

-- kristendom-opprinnelse - Question 7
UPDATE public.questions SET
  prompt_en = 'In the 1500s, the ___, led by Martin Luther, led to new Protestant church communities breaking away from the Catholic Church.',
  prompt_tr = '1500''lerde Martin Luther''in öncülük ettiği ___, Katolik Kilisesi''nden ayrılan yeni Protestan kilise topluluklarının oluşmasına yol açtı.',
  meta_en = '{"answer":"Reformation"}'::jsonb,
  meta_tr = '{"answer":"Reformasyon"}'::jsonb
WHERE prompt = 'På 1500-tallet førte ___, anført av Martin Luther, til at nye protestantiske kirkesamfunn brøt ut fra den katolske kirke.'
  AND type = 'gap';

-- kristendom-tro (Beliefs) - Question 1
UPDATE public.questions SET
  prompt_en = 'Christianity is a monotheistic religion.',
  prompt_tr = 'Hıristiyanlık tek tanrılı bir dindir.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Kristendommen er en monoteistisk religion.'
  AND type = 'tf'
  AND order_index = 0
  AND quiz_id IN (
    SELECT q.id FROM public.quizzes q
    JOIN public.lessons l ON l.id = q.lesson_id
    WHERE l.slug = 'kristendom-tro'
  );

-- kristendom-tro - Question 2
UPDATE public.questions SET
  prompt_en = 'Most church communities uphold the belief in ___: that God is one being, but three "persons".',
  prompt_tr = 'Çoğu kilise topluluğu ___''e inanır: Tanrı bir varlık ama üç "kişi"dir.',
  meta_en = '{"answer":"the Trinity"}'::jsonb,
  meta_tr = '{"answer":"Teslis"}'::jsonb
WHERE prompt = 'De fleste kirkesamfunn fastholder troen på ___: at Gud er ett vesen, men tre «personer».'
  AND type = 'gap';

-- kristendom-tro - Question 3
UPDATE public.questions SET
  prompt_en = 'What does the Trinity consist of?',
  prompt_tr = 'Teslis nelerden oluşur?',
  meta_en = '{"choices":[
    {"id":"a","text":"Three gods"},
    {"id":"b","text":"The Father, the Son, and the Holy Spirit","correct":true},
    {"id":"c","text":"Three churches"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Üç tanrı"},
    {"id":"b","text":"Baba, Oğul ve Kutsal Ruh","correct":true},
    {"id":"c","text":"Üç kilise"}
  ]}'::jsonb
WHERE prompt = 'Hva består treenigheten av?'
  AND type = 'mcq';

-- kristendom-tro - Question 4
UPDATE public.questions SET
  prompt_en = 'In Christian doctrine, Jesus is understood as both fully ___ and God.',
  prompt_tr = 'Hıristiyan doktrinine göre İsa hem tamamen ___ hem de Tanrı olarak anlaşılır.',
  meta_en = '{"answer":"human"}'::jsonb,
  meta_tr = '{"answer":"insan"}'::jsonb
WHERE prompt = 'I kristen lære forstås Jesus som både fullt ut Gud og menneske.'
  AND type = 'gap';

-- kristendom-tro - Question 5
UPDATE public.questions SET
  prompt_en = 'How is salvation attained according to Christianity?',
  prompt_tr = 'Hıristiyanlığa göre kurtuluş nasıl elde edilir?',
  meta_en = '{"choices":[
    {"id":"a","text":"By following all laws perfectly"},
    {"id":"b","text":"Through faith in Jesus","correct":true},
    {"id":"c","text":"By donating money to the church"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Tüm yasalara kusursuz şekilde uyarak"},
    {"id":"b","text":"İsa''ya inanarak","correct":true},
    {"id":"c","text":"Kiliseye para bağışlayarak"}
  ]}'::jsonb
WHERE prompt = 'Hvordan oppnås frelse ifølge kristendommen?'
  AND type = 'mcq';

-- kristendom-tro - Question 6
UPDATE public.questions SET
  prompt_en = 'Christianity emphasizes ___, forgiveness, and care for others as fundamental values.',
  prompt_tr = 'Hıristiyanlık temel değerler olarak ___, bağışlama ve başkalarına özen göstermeyi vurgular.',
  meta_en = '{"answer":"love for one''s neighbor"}'::jsonb,
  meta_tr = '{"answer":"komşu sevgisi"}'::jsonb
WHERE prompt = 'Kristendommen legger vekt på ___, tilgivelse og omsorg for andre som grunnleggende verdier.'
  AND type = 'gap';

-- kristendom-praksis (Practices) - Question 1
UPDATE public.questions SET
  prompt_en = 'Which day of the week is the most common worship day?',
  prompt_tr = 'Haftanın hangi günü en yaygın ibadet günüdür?',
  meta_en = '{"choices":[
    {"id":"a","text":"Friday"},
    {"id":"b","text":"Saturday"},
    {"id":"c","text":"Sunday","correct":true}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Cuma"},
    {"id":"b","text":"Cumartesi"},
    {"id":"c","text":"Pazar","correct":true}
  ]}'::jsonb
WHERE prompt = 'Hvilken dag i uken er den vanligste gudstjenestedagen?'
  AND type = 'mcq';

-- kristendom-praksis - Question 2
UPDATE public.questions SET
  prompt_en = 'Baptism and Holy Communion are considered particularly important sacraments in most church communities.',
  prompt_tr = 'Vaftiz ve Kutsal Komünyon, çoğu kilise topluluğunda özellikle önemli ayinler olarak kabul edilir.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Dåp og nattverd regnes som særlig viktige sakramenter i de fleste kirkesamfunn.'
  AND type = 'tf';

-- kristendom-praksis - Question 3
UPDATE public.questions SET
  prompt_en = '___ marks incorporation into the Christian community and symbolizes cleansing from sin.',
  prompt_tr = '___, Hıristiyan topluluğuna katılımı işaretler ve günahtan arınmayı simgeler.',
  meta_en = '{"answer":"Baptism"}'::jsonb,
  meta_tr = '{"answer":"Vaftiz"}'::jsonb
WHERE prompt = '___ markerer innlemmelsen i det kristne fellesskapet og symboliserer renselse fra synd.'
  AND type = 'gap';

-- kristendom-praksis - Question 4
UPDATE public.questions SET
  prompt_en = 'What do bread and wine symbolize in Holy Communion?',
  prompt_tr = 'Kutsal Komünyon''da ekmek ve şarap neyi simgeler?',
  meta_en = '{"choices":[
    {"id":"a","text":"Food and drink in general"},
    {"id":"b","text":"Jesus'' body and blood","correct":true},
    {"id":"c","text":"The riches of heaven"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Genel olarak yiyecek ve içecek"},
    {"id":"b","text":"İsa''nın bedeni ve kanı","correct":true},
    {"id":"c","text":"Cennetin zenginlikleri"}
  ]}'::jsonb
WHERE prompt = 'Hva symboliserer brød og vin i nattverden?'
  AND type = 'mcq';

-- kristendom-praksis - Question 5
UPDATE public.questions SET
  prompt_en = '___ is the confirmation of the baptismal covenant in youth.',
  prompt_tr = '___, gençlikte vaftiz ahitinin onaylanmasıdır.',
  meta_en = '{"answer":"Confirmation"}'::jsonb,
  meta_tr = '{"answer":"Eşinleme"}'::jsonb
WHERE prompt = '___ er bekreftelsen av dåpspakt i ungdomsalder.'
  AND type = 'gap';

-- kristendom-hoytider (Holidays) - Question 1
UPDATE public.questions SET
  prompt_en = 'What are the three major Christian holidays?',
  prompt_tr = 'Üç büyük Hıristiyan bayramı nelerdir?',
  meta_en = '{"choices":[
    {"id":"a","text":"Christmas, Easter, and Pentecost","correct":true},
    {"id":"b","text":"Christmas, New Year, and All Saints'' Day"},
    {"id":"c","text":"Easter, summer, and autumn"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Noel, Paskalya ve Pentikost","correct":true},
    {"id":"b","text":"Noel, Yılbaşı ve Azizler Günü"},
    {"id":"c","text":"Paskalya, yaz ve sonbahar"}
  ]}'::jsonb
WHERE prompt = 'Hva er de tre største kristne høytidene?'
  AND type = 'mcq';

-- kristendom-hoytider - Question 2
UPDATE public.questions SET
  prompt_en = 'Christmas is celebrated in memory of Jesus'' birth.',
  prompt_tr = 'Noel, İsa''nın doğumunun anısına kutlanır.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Jul feires til minne om Jesu fødsel.'
  AND type = 'tf';

-- kristendom-hoytider - Question 3
UPDATE public.questions SET
  prompt_en = 'Which holiday is considered the most important and oldest Christian holiday?',
  prompt_tr = 'Hangi bayram en önemli ve en eski Hıristiyan bayramı olarak kabul edilir?',
  meta_en = '{"choices":[
    {"id":"a","text":"Christmas"},
    {"id":"b","text":"Easter","correct":true},
    {"id":"c","text":"Pentecost"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Noel"},
    {"id":"b","text":"Paskalya","correct":true},
    {"id":"c","text":"Pentikost"}
  ]}'::jsonb
WHERE prompt = 'Hvilken høytid regnes som den viktigste og eldste kristne høytiden?'
  AND type = 'mcq';

-- kristendom-hoytider - Question 4
UPDATE public.questions SET
  prompt_en = 'Easter is celebrated in memory of Jesus'' suffering, death, and ___.',
  prompt_tr = 'Paskalya, İsa''nın acı çekmesi, ölümü ve ___''nın anısına kutlanır.',
  meta_en = '{"answer":"resurrection"}'::jsonb,
  meta_tr = '{"answer":"dirilişi"}'::jsonb
WHERE prompt = 'Påsken feires til minne om Jesu lidelse, død og ___.'
  AND type = 'gap';

-- kristendom-hoytider - Question 5
UPDATE public.questions SET
  prompt_en = 'What does Pentecost mark?',
  prompt_tr = 'Pentikost neyi işaret eder?',
  meta_en = '{"choices":[
    {"id":"a","text":"Jesus'' birth"},
    {"id":"b","text":"The coming of the Holy Spirit upon the apostles","correct":true},
    {"id":"c","text":"Jesus'' crucifixion"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"İsa''nın doğumu"},
    {"id":"b","text":"Kutsal Ruh''un havarilere inmesi","correct":true},
    {"id":"c","text":"İsa''nın çarmıha gerilmesi"}
  ]}'::jsonb
WHERE prompt = 'Hva markerer pinse?'
  AND type = 'mcq';

-- kristendom-hoytider - Question 6
UPDATE public.questions SET
  prompt_en = 'Pentecost comes ___ days after Easter.',
  prompt_tr = 'Pentikost, Paskalya''dan ___ gün sonra gelir.',
  meta_en = '{"answer":"50"}'::jsonb,
  meta_tr = '{"answer":"50"}'::jsonb
WHERE prompt = 'Pinse kommer ___ dager etter påske.'
  AND type = 'gap';

-- kristendom-hoytider - Question 7
UPDATE public.questions SET
  prompt_en = 'Which day is celebrated weekly because Jesus rose on this day?',
  prompt_tr = 'İsa bu gün dirildiği için hangi gün haftalık olarak kutlanır?',
  meta_en = '{"choices":[
    {"id":"a","text":"Friday"},
    {"id":"b","text":"Saturday"},
    {"id":"c","text":"Sunday","correct":true}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Cuma"},
    {"id":"b","text":"Cumartesi"},
    {"id":"c","text":"Pazar","correct":true}
  ]}'::jsonb
WHERE prompt = 'Hvilken dag feires ukentlig fordi Jesus stod opp denne dagen?'
  AND type = 'mcq';

-- kristendom-tekster (Texts) - Question 1
UPDATE public.questions SET
  prompt_en = '___ is Christianity''s holy scripture and authoritative source for faith and doctrine.',
  prompt_tr = '___, Hıristiyanlığın kutsal yazısı ve inanç ve doktrin için yetkili kaynaktır.',
  meta_en = '{"answer":"The Bible"}'::jsonb,
  meta_tr = '{"answer":"İncil"}'::jsonb
WHERE prompt = '___ er kristendommens hellige skrift og autoritative kilde for tro og lære.'
  AND type = 'gap';

-- kristendom-tekster - Question 2
UPDATE public.questions SET
  prompt_en = 'What does the Bible consist of?',
  prompt_tr = 'İncil nelerden oluşur?',
  meta_en = '{"choices":[
    {"id":"a","text":"Only the New Testament"},
    {"id":"b","text":"The Old Testament and the New Testament","correct":true},
    {"id":"c","text":"Only the Old Testament"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Sadece Yeni Ahit"},
    {"id":"b","text":"Eski Ahit ve Yeni Ahit","correct":true},
    {"id":"c","text":"Sadece Eski Ahit"}
  ]}'::jsonb
WHERE prompt = 'Hva består Bibelen av?'
  AND type = 'mcq';

-- kristendom-tekster - Question 3
UPDATE public.questions SET
  prompt_en = 'The New Testament contains the four Gospels about Jesus'' life.',
  prompt_tr = 'Yeni Ahit, İsa''nın yaşamı hakkında dört İncil içerir.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Det nye testamentet inneholder de fire evangeliene om Jesu liv.'
  AND type = 'tf';

-- kristendom-tekster - Question 4
UPDATE public.questions SET
  prompt_en = 'What is the most widespread symbol in Christianity?',
  prompt_tr = 'Hıristiyanlıkta en yaygın sembol nedir?',
  meta_en = '{"choices":[
    {"id":"a","text":"The cross","correct":true},
    {"id":"b","text":"The fish"},
    {"id":"c","text":"The dove"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Haç","correct":true},
    {"id":"b","text":"Balık"},
    {"id":"c","text":"Güvercin"}
  ]}'::jsonb
WHERE prompt = 'Hva er det mest utbredte symbolet i kristendommen?'
  AND type = 'mcq';

-- kristendom-tekster - Question 5
UPDATE public.questions SET
  prompt_en = 'The cross represents Jesus'' ___ and the work of salvation.',
  prompt_tr = 'Haç, İsa''nın ___''nı ve kurtuluş işini temsil eder.',
  meta_en = '{"answer":"crucifixion"}'::jsonb,
  meta_tr = '{"answer":"çarmıha gerilişi"}'::jsonb
WHERE prompt = 'Korset representerer Jesu ___ og frelsesverket.'
  AND type = 'gap';

-- kristendom-tekster - Question 6
UPDATE public.questions SET
  prompt_en = 'What does the dove symbolize in Christianity?',
  prompt_tr = 'Güvercin Hıristiyanlıkta neyi sembolize eder?',
  meta_en = '{"choices":[
    {"id":"a","text":"Peace"},
    {"id":"b","text":"The Holy Spirit","correct":true},
    {"id":"c","text":"The angels"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Barış"},
    {"id":"b","text":"Kutsal Ruh","correct":true},
    {"id":"c","text":"Melekler"}
  ]}'::jsonb
WHERE prompt = 'Hva symboliserer duen i kristendommen?'
  AND type = 'mcq';

-- kristendom-tekster - Question 7
UPDATE public.questions SET
  prompt_en = 'The Christian fish (Ichthys) was used as a secret sign by the early Christians.',
  prompt_tr = 'Hıristiyan balığı (İhthis), erken dönem Hıristiyanlar tarafından gizli bir işaret olarak kullanıldı.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Den kristne fisken (Ichthys) ble brukt som et hemmelig kjennetegn av de tidlige kristne.'
  AND type = 'tf';
-- Add English and Turkish translations for ALL Islam quiz questions
-- This migration adds prompt_en, prompt_tr, meta_en, and meta_tr for all questions
-- that currently only have Norwegian text

-- ==================== ISLAM LESSONS ====================

-- islam-opprinnelse (Origins) - Question 1
UPDATE public.questions SET
  prompt_en = 'When did Islam originate?',
  prompt_tr = 'İslam ne zaman ortaya çıktı?',
  meta_en = '{"choices":[
    {"id":"a","text":"In the 7th century CE","correct":true},
    {"id":"b","text":"In the 1st century CE"},
    {"id":"c","text":"In the 10th century CE"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"MS 7. yüzyılda","correct":true},
    {"id":"b","text":"MS 1. yüzyılda"},
    {"id":"c","text":"MS 10. yüzyılda"}
  ]}'::jsonb
WHERE prompt = 'Når oppsto islam?'
  AND type = 'mcq'
  AND order_index = 0;

-- islam-opprinnelse - Question 2
UPDATE public.questions SET
  prompt_en = 'The founder of the religion, the Prophet ___ (c. 570-632 CE), received according to Islamic belief his first revelation from God in the year 610.',
  prompt_tr = 'Dinin kurucusu Peygamber ___ (yaklaşık 570-632 MS), İslam inancına göre 610 yılında Tanrı''dan ilk vahyini aldı.',
  meta_en = '{"answer":"Muhammad"}'::jsonb,
  meta_tr = '{"answer":"Muhammed"}'::jsonb
WHERE prompt = 'Religionens grunnlegger, profeten ___ (ca. 570–632 e.v.t.), mottok ifølge islams tro sin første åpenbaring fra Gud i år 610.'
  AND type = 'gap';

-- islam-opprinnelse - Question 3
UPDATE public.questions SET
  prompt_en = 'In which year did the Prophet Muhammad receive his first revelation?',
  prompt_tr = 'Peygamber Muhammed ilk vahyini hangi yılda aldı?',
  meta_en = '{"choices":[
    {"id":"a","text":"610","correct":true},
    {"id":"b","text":"622"},
    {"id":"c","text":"632"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"610","correct":true},
    {"id":"b","text":"622"},
    {"id":"c","text":"632"}
  ]}'::jsonb
WHERE prompt = 'I hvilket år mottok profeten Muhammad sin første åpenbaring?'
  AND type = 'mcq';

-- islam-opprinnelse - Question 4
UPDATE public.questions SET
  prompt_en = 'In ___, Muhammad migrated from Mecca to Medina (the so-called Hijra).',
  prompt_tr = '___ yılında Muhammed Mekke''den Medine''ye göç etti (Hicret olarak bilinen).',
  meta_en = '{"answer":"622"}'::jsonb,
  meta_tr = '{"answer":"622"}'::jsonb
WHERE prompt = 'I ___ utvandret Muhammad fra Mekka til Medina (den såkalte hijra).'
  AND type = 'gap';

-- islam-opprinnelse - Question 5
UPDATE public.questions SET
  prompt_en = 'By Muhammad''s death in 632, he had united large parts of the Arabian Peninsula under Islam.',
  prompt_tr = 'Muhammed''in 632''deki ölümünde, Arap Yarımadası''nın büyük bölümlerini İslam altında birleştirmişti.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Ved Muhammads død i 632 hadde han forent store deler av Den arabiske halvøy under islam.'
  AND type = 'tf';

-- islam-opprinnelse - Question 6
UPDATE public.questions SET
  prompt_en = 'What is the name of the followers of Ali who developed into a separate branch of Islam?',
  prompt_tr = 'Ali''nin takipçilerinin adı nedir ve İslam''da ayrı bir kola dönüştüler?',
  meta_en = '{"choices":[
    {"id":"a","text":"Sunni"},
    {"id":"b","text":"Shia","correct":true},
    {"id":"c","text":"Sufi"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Sünni"},
    {"id":"b","text":"Şii","correct":true},
    {"id":"c","text":"Sufi"}
  ]}'::jsonb
WHERE prompt = 'Hva er navnet på tilhengerne av Ali som utviklet seg til en egen retning i islam?'
  AND type = 'mcq';

-- islam-opprinnelse - Question 7
UPDATE public.questions SET
  prompt_en = 'The split between Sunni and Shia arose due to disagreement about who should succeed Muhammad as leader.',
  prompt_tr = 'Sünni ve Şii arasındaki ayrılık, Muhammed''den sonra lider olarak kimin geçeceği konusundaki anlaşmazlıktan kaynaklandı.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Skillet mellom sunni og sjia oppsto på grunn av uenighet om hvem som skulle etterfølge Muhammad som leder.'
  AND type = 'tf';

-- islam-tro (Beliefs) - Question 1
UPDATE public.questions SET
  prompt_en = 'Islam is a strictly monotheistic religion.',
  prompt_tr = 'İslam kesinlikle tek tanrılı bir dindir.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Islam er en strengt monoteistisk religion.'
  AND type = 'tf'
  AND order_index = 0
  AND quiz_id IN (
    SELECT q.id FROM public.quizzes q
    JOIN public.lessons l ON l.id = q.lesson_id
    WHERE l.slug = 'islam-tro'
  );

-- islam-tro - Question 2
UPDATE public.questions SET
  prompt_en = 'There is only one almighty God – ___.',
  prompt_tr = 'Sadece bir her şeye kadir Tanrı vardır – ___.',
  meta_en = '{"answer":"Allah"}'::jsonb,
  meta_tr = '{"answer":"Allah"}'::jsonb
WHERE prompt = 'Det finnes bare én allmektig Gud – ___.'
  AND type = 'gap';

-- islam-tro - Question 3
UPDATE public.questions SET
  prompt_en = 'How many articles of faith does Islam have?',
  prompt_tr = 'İslam''ın kaç iman esası vardır?',
  meta_en = '{"choices":[
    {"id":"a","text":"Three"},
    {"id":"b","text":"Five"},
    {"id":"c","text":"Six","correct":true}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Üç"},
    {"id":"b","text":"Beş"},
    {"id":"c","text":"Altı","correct":true}
  ]}'::jsonb
WHERE prompt = 'Hvor mange trosartikler har islam?'
  AND type = 'mcq';

-- islam-tro - Question 4
UPDATE public.questions SET
  prompt_en = 'The declaration of faith (___) states: "I bear witness that there is no deity except Allah, and that Muhammad is His messenger".',
  prompt_tr = 'İnanç beyanı (___) şöyle der: "Allah''tan başka ilah olmadığına ve Muhammed''in O''nun elçisi olduğuna şahitlik ederim".',
  meta_en = '{"answer":"Shahada"}'::jsonb,
  meta_tr = '{"answer":"Şehadet"}'::jsonb
WHERE prompt = 'Trosbekjennelsen (___) lyder: «Jeg bevitner at det er ingen guddom utenom Allah, og at Muhammad er Hans sendebud».'
  AND type = 'gap';

-- islam-tro - Question 5
UPDATE public.questions SET
  prompt_en = 'What does the word "Islam" mean?',
  prompt_tr = '"İslam" kelimesi ne anlama gelir?',
  meta_en = '{"choices":[
    {"id":"a","text":"Peace"},
    {"id":"b","text":"Submission (to God)","correct":true},
    {"id":"c","text":"Love"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Barış"},
    {"id":"b","text":"Teslimiyet (Tanrı''ya)","correct":true},
    {"id":"c","text":"Sevgi"}
  ]}'::jsonb
WHERE prompt = 'Hva betyr ordet "islam"?'
  AND type = 'mcq';

-- islam-tro - Question 6
UPDATE public.questions SET
  prompt_en = 'Islam teaches that humans will be held accountable before God on the Day of Judgment.',
  prompt_tr = 'İslam, insanların Kıyamet Günü''nde Tanrı''nın önünde hesap vereceklerini öğretir.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Islam lærer at mennesket skal stå til ansvar overfor Gud på Dommens dag.'
  AND type = 'tf';

-- islam-tro - Question 7
UPDATE public.questions SET
  prompt_en = 'According to Islam, who are earlier prophets in the Abrahamic tradition?',
  prompt_tr = 'İslam''a göre İbrahimi gelenekte daha önceki peygamberler kimlerdir?',
  meta_en = '{"choices":[
    {"id":"a","text":"Only Muhammad"},
    {"id":"b","text":"Abraham, Moses, and Jesus","correct":true},
    {"id":"c","text":"Only Jesus"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Sadece Muhammed"},
    {"id":"b","text":"İbrahim, Musa ve İsa","correct":true},
    {"id":"c","text":"Sadece İsa"}
  ]}'::jsonb
WHERE prompt = 'Ifølge islam, hvem er tidligere profeter i den abrahamittiske tradisjonen?'
  AND type = 'mcq';

-- islam-soylene (Five Pillars) - Question 1
UPDATE public.questions SET
  prompt_en = 'How many daily prayers should Muslims perform?',
  prompt_tr = 'Müslümanlar günde kaç namaz kılmalıdır?',
  meta_en = '{"choices":[
    {"id":"a","text":"Three"},
    {"id":"b","text":"Five","correct":true},
    {"id":"c","text":"Seven"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Üç"},
    {"id":"b","text":"Beş","correct":true},
    {"id":"c","text":"Yedi"}
  ]}'::jsonb
WHERE prompt = 'Hvor mange daglige bønner skal muslimer be?'
  AND type = 'mcq';

-- islam-soylene - Question 2
UPDATE public.questions SET
  prompt_en = 'The ritual almsgiving is called ___ and is approximately 2.5% of one''s wealth.',
  prompt_tr = 'Ritüel sadaka ___''a denir ve kişinin servetinin yaklaşık %2,5''idir.',
  meta_en = '{"answer":"Zakat"}'::jsonb,
  meta_tr = '{"answer":"Zekat"}'::jsonb
WHERE prompt = 'Den rituelle avgiften kalles ___ og er ca. 2,5% av ens formue.'
  AND type = 'gap';

-- islam-soylene - Question 3
UPDATE public.questions SET
  prompt_en = 'Muslims should pray facing Mecca.',
  prompt_tr = 'Müslümanlar Mekke''ye dönük olarak namaz kılmalıdır.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Muslimer skal be vendt mot Mekka.'
  AND type = 'tf';

-- islam-soylene - Question 4
UPDATE public.questions SET
  prompt_en = 'What is the name of the pilgrimage to Mecca?',
  prompt_tr = 'Mekke''ye haccın adı nedir?',
  meta_en = '{"choices":[
    {"id":"a","text":"Hajj","correct":true},
    {"id":"b","text":"Umrah"},
    {"id":"c","text":"Salah"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Hac","correct":true},
    {"id":"b","text":"Umre"},
    {"id":"c","text":"Salat"}
  ]}'::jsonb
WHERE prompt = 'Hva er navnet på pilegrimsreisen til Mekka?'
  AND type = 'mcq';

-- islam-soylene - Question 5
UPDATE public.questions SET
  prompt_en = 'During the fasting month of ___, adult Muslims should fast from dawn to sunset.',
  prompt_tr = 'Oruç ayı ___ boyunca yetişkin Müslümanlar şafaktan güneş batımına kadar oruç tutmalıdır.',
  meta_en = '{"answer":"Ramadan"}'::jsonb,
  meta_tr = '{"answer":"Ramazan"}'::jsonb
WHERE prompt = 'Under fastemåneden ___ skal voksne muslimer faste fra daggry til solnedgang.'
  AND type = 'gap';

-- islam-soylene - Question 6
UPDATE public.questions SET
  prompt_en = 'Every Muslim should try to perform Hajj once in their lifetime if they have the health and finances for it.',
  prompt_tr = 'Her Müslüman, sağlığı ve ekonomik durumu uygunsa hayatında bir kez Hac yapmaya çalışmalıdır.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Hver muslim skal forsøke å gjennomføre hajj én gang i livet dersom vedkommende har helse og økonomi til det.'
  AND type = 'tf';

-- islam-soylene - Question 7
UPDATE public.questions SET
  prompt_en = 'Which day of the week is the most important prayer day in Islam?',
  prompt_tr = 'Haftanın hangi günü İslam''da en önemli namaz günüdür?',
  meta_en = '{"choices":[
    {"id":"a","text":"Sunday"},
    {"id":"b","text":"Friday","correct":true},
    {"id":"c","text":"Saturday"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Pazar"},
    {"id":"b","text":"Cuma","correct":true},
    {"id":"c","text":"Cumartesi"}
  ]}'::jsonb
WHERE prompt = 'Hvilken dag i uken er den viktigste bønnedagen i islam?'
  AND type = 'mcq';

-- islam-soylene - Question 8
UPDATE public.questions SET
  prompt_en = 'Before prayer, Muslims must perform ritual cleansing called ___.',
  prompt_tr = 'Namazdan önce Müslümanlar ___ adı verilen ritüel temizliği yapmalıdırlar.',
  meta_en = '{"answer":"wudu"}'::jsonb,
  meta_tr = '{"answer":"abdest"}'::jsonb
WHERE prompt = 'Før bønn må muslimer utføre rituell renselse som kalles ___.'
  AND type = 'gap';

-- islam-hoytider (Holidays) - Question 1
UPDATE public.questions SET
  prompt_en = 'What is the name of the holiday that marks the end of Ramadan?',
  prompt_tr = 'Ramazan''ın sonunu işaret eden bayramın adı nedir?',
  meta_en = '{"choices":[
    {"id":"a","text":"Eid al-Fitr","correct":true},
    {"id":"b","text":"Eid al-Adha"},
    {"id":"c","text":"Ashura"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Ramazan Bayramı","correct":true},
    {"id":"b","text":"Kurban Bayramı"},
    {"id":"c","text":"Aşure"}
  ]}'::jsonb
WHERE prompt = 'Hva kalles høytiden som markerer slutten på ramadan?'
  AND type = 'mcq';

-- islam-hoytider - Question 2
UPDATE public.questions SET
  prompt_en = '___ (the Feast of Sacrifice) is celebrated at the conclusion of the annual Hajj pilgrimage.',
  prompt_tr = '___ (Kurban Bayramı), yıllık Hac ziyaretinin sonunda kutlanır.',
  meta_en = '{"answer":"Eid al-Adha"}'::jsonb,
  meta_tr = '{"answer":"Kurban Bayramı"}'::jsonb
WHERE prompt = '___ (offerfesten) feires ved avslutningen av den årlige hajj-pilegrimsferden.'
  AND type = 'gap';

-- islam-hoytider - Question 3
UPDATE public.questions SET
  prompt_en = 'Islam follows an Islamic calendar based on the lunar year.',
  prompt_tr = 'İslam, ay yılına dayanan bir İslami takvim takip eder.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Islam følger en islamsk kalender basert på måneåret.'
  AND type = 'tf';

-- islam-hoytider - Question 4
UPDATE public.questions SET
  prompt_en = 'What does Eid al-Adha mark according to tradition?',
  prompt_tr = 'Geleneğe göre Kurban Bayramı neyi anımsar?',
  meta_en = '{"choices":[
    {"id":"a","text":"Muhammad''s birth"},
    {"id":"b","text":"Prophet Abraham''s willingness to sacrifice his son","correct":true},
    {"id":"c","text":"The end of fasting"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Muhammed''in doğumu"},
    {"id":"b","text":"Peygamber İbrahim''in oğlunu kurban etmeye hazır oluşu","correct":true},
    {"id":"c","text":"Orucun sonu"}
  ]}'::jsonb
WHERE prompt = 'Hva markerer id al-adha ifølge tradisjonen?'
  AND type = 'mcq';

-- islam-hoytider - Question 5
UPDATE public.questions SET
  prompt_en = 'The Day of Ashura is observed on the 10th of ___ (the first month of the year).',
  prompt_tr = 'Aşure günü, yılın ilk ayı olan ___''nın 10''unda tutulur.',
  meta_en = '{"answer":"Muharram"}'::jsonb,
  meta_tr = '{"answer":"Muharrem"}'::jsonb
WHERE prompt = 'Ashura-dagen markeres den 10. ___ (første måned i året).'
  AND type = 'gap';

-- islam-hoytider - Question 6
UPDATE public.questions SET
  prompt_en = 'For Shia Muslims, Ashura is a day of mourning in memory of Imam Husayn''s martyrdom.',
  prompt_tr = 'Şii Müslümanlar için Aşure, İmam Hüseyin''in şehitliğinin anısına bir yas günüdür.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'For sjiamuslimer er ashura en sørgedag til minne om Imam Husayns martyrdød.'
  AND type = 'tf';

-- islam-hoytider - Question 7
UPDATE public.questions SET
  prompt_en = 'Which day do Muslims honor the Prophet Muhammad''s birth?',
  prompt_tr = 'Müslümanlar Peygamber Muhammed''in doğumunu hangi günde onurlandırır?',
  meta_en = '{"choices":[
    {"id":"a","text":"Ashura"},
    {"id":"b","text":"Mawlid al-Nabi","correct":true},
    {"id":"c","text":"Eid al-Fitr"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Aşure"},
    {"id":"b","text":"Mevlid Kandili","correct":true},
    {"id":"c","text":"Ramazan Bayramı"}
  ]}'::jsonb
WHERE prompt = 'Hvilken dag hedrer muslimer profeten Muhammads fødsel?'
  AND type = 'mcq';

-- islam-tekster (Texts) - Question 1
UPDATE public.questions SET
  prompt_en = '___ is Islam''s holiest scripture.',
  prompt_tr = '___, İslam''ın en kutsal yazısıdır.',
  meta_en = '{"answer":"The Quran"}'::jsonb,
  meta_tr = '{"answer":"Kuran"}'::jsonb
WHERE prompt = '___ er islams helligste skrift.'
  AND type = 'gap';

-- islam-tekster - Question 2
UPDATE public.questions SET
  prompt_en = 'Through whom did Muhammad receive the revelations?',
  prompt_tr = 'Muhammed vahiyleri kimin aracılığıyla aldı?',
  meta_en = '{"choices":[
    {"id":"a","text":"Directly from God"},
    {"id":"b","text":"The Angel Gabriel","correct":true},
    {"id":"c","text":"Prophet Abraham"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Doğrudan Tanrı''dan"},
    {"id":"b","text":"Melek Cebrail","correct":true},
    {"id":"c","text":"Peygamber İbrahim"}
  ]}'::jsonb
WHERE prompt = 'Gjennom hvem mottok Muhammad åpenbaringene?'
  AND type = 'mcq';

-- islam-tekster - Question 3
UPDATE public.questions SET
  prompt_en = 'The Quran is divided into 114 chapters called ___.',
  prompt_tr = 'Kuran, ___ adı verilen 114 bölüme ayrılmıştır.',
  meta_en = '{"answer":"suras"}'::jsonb,
  meta_tr = '{"answer":"sureler"}'::jsonb
WHERE prompt = 'Koranen er inndelt i 114 kapitler som kalles ___.'
  AND type = 'gap';

-- islam-tekster - Question 4
UPDATE public.questions SET
  prompt_en = 'Hadith are written accounts of what Muhammad said and did.',
  prompt_tr = 'Hadis, Muhammed''in söyledikleri ve yaptıklarının yazılı kayıtlarıdır.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Hadith er nedskrevne fortellinger om hva Muhammad sa og gjorde.'
  AND type = 'tf';

-- islam-tekster - Question 5
UPDATE public.questions SET
  prompt_en = 'What is the Prophet''s example formed by Hadith called?',
  prompt_tr = 'Hadis tarafından oluşturulan Peygamber''in örneğine ne denir?',
  meta_en = '{"choices":[
    {"id":"a","text":"Sharia"},
    {"id":"b","text":"Sunna","correct":true},
    {"id":"c","text":"Umma"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Şeriat"},
    {"id":"b","text":"Sünnet","correct":true},
    {"id":"c","text":"Ümmet"}
  ]}'::jsonb
WHERE prompt = 'Hva kalles Profetens eksempel som dannes av hadith?'
  AND type = 'mcq';

-- islam-tekster - Question 6
UPDATE public.questions SET
  prompt_en = '___ (Islamic law) is based on commandments and prohibitions expressed in the Quran and Hadith.',
  prompt_tr = '___ (İslam hukuku), Kuran ve Hadis''te ifade edilen emirler ve yasaklara dayanır.',
  meta_en = '{"answer":"Sharia"}'::jsonb,
  meta_tr = '{"answer":"Şeriat"}'::jsonb
WHERE prompt = '___ (den islamske loven) bygger på påbud og forbud som kommer til uttrykk i Koranen og hadith.'
  AND type = 'gap';

-- islam-tekster - Question 7
UPDATE public.questions SET
  prompt_en = 'Islam traditionally has a strict prohibition against images in religious contexts.',
  prompt_tr = 'İslam geleneksel olarak dini bağlamlarda resimlere karşı katı bir yasağa sahiptir.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Islam har tradisjonelt et strengt billedforbud i religiøs sammenheng.'
  AND type = 'tf';

-- islam-tekster - Question 8
UPDATE public.questions SET
  prompt_en = 'What is the name of the black stone building in Mecca that Muslims face when they pray?',
  prompt_tr = 'Müslümanların namaz kılarken yüzlerini döndükleri Mekke''deki siyah taş yapının adı nedir?',
  meta_en = '{"choices":[
    {"id":"a","text":"The Mosque"},
    {"id":"b","text":"The Kaaba","correct":true},
    {"id":"c","text":"The Minaret"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Cami"},
    {"id":"b","text":"Kabe","correct":true},
    {"id":"c","text":"Minare"}
  ]}'::jsonb
WHERE prompt = 'Hva er navnet på den svarte steinbygningen i Mekka som muslimer vender seg mot når de ber?'
  AND type = 'mcq';

-- islam-tekster - Question 9
UPDATE public.questions SET
  prompt_en = 'Islamic art and symbolism is primarily non-figurative and decorated with Arabic ___ (artistic writing).',
  prompt_tr = 'İslam sanatı ve sembolizmi ağırlıklı olarak figürsüzdür ve Arapça ___ (sanatsal yazı) ile süslenmiştir.',
  meta_en = '{"answer":"calligraphy"}'::jsonb,
  meta_tr = '{"answer":"hat sanatı"}'::jsonb
WHERE prompt = 'Islamsk kunst og symbolbruk er hovedsakelig nonfigurativ og pyntes med arabisk ___ (kunstferdig skrift).'
  AND type = 'gap';

-- islam-tekster - Question 10
UPDATE public.questions SET
  prompt_en = 'Which symbol is best known as an emblem of Islam today?',
  prompt_tr = 'Hangi sembol bugün İslam''ın amblemi olarak en iyi bilinir?',
  meta_en = '{"choices":[
    {"id":"a","text":"The cross"},
    {"id":"b","text":"The crescent moon and star","correct":true},
    {"id":"c","text":"The fish"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Haç"},
    {"id":"b","text":"Hilal ve yıldız","correct":true},
    {"id":"c","text":"Balık"}
  ]}'::jsonb
WHERE prompt = 'Hvilket symbol er mest kjent som emblem for islam i dag?'
  AND type = 'mcq';

-- islam-tekster - Question 11
UPDATE public.questions SET
  prompt_en = 'The crescent-and-star symbol has historical origins before Islam and became popular through the Ottoman Empire.',
  prompt_tr = 'Hilal ve yıldız sembolü İslam''dan önce tarihi kökenlere sahiptir ve Osmanlı İmparatorluğu sayesinde popüler olmuştur.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Halvmåne-og-stjerne-symbolet har historisk opprinnelse før islam og ble populært gjennom det osmanske riket.'
  AND type = 'tf';

-- islam-tekster - Question 12
UPDATE public.questions SET
  prompt_en = 'The color ___ is often associated with Islam and symbolizes paradise.',
  prompt_tr = '___ rengi genellikle İslam ile ilişkilendirilir ve cenneti simgeler.',
  meta_en = '{"answer":"green"}'::jsonb,
  meta_tr = '{"answer":"yeşil"}'::jsonb
WHERE prompt = 'Farven ___ forbindes ofte med islam og symboliserer paradiset.'
  AND type = 'gap';

-- ==================== ADDITIONAL CORRECTIONS SUMMARY ====================
-- 
-- Key Changes Made to Match Norwegian Source:
-- 
-- islam-opprinnelse (Origins):
-- - Question 3: Added missing question about the year 610 (when Muhammad received first revelation)
-- - Question 4: Changed from "Hijra to ___ in 622" to "In ___ Muhammad migrated" (answer: 622)
-- - Question 5: Changed from generic "Islam spread quickly" to specific "By Muhammad's death in 632..."
-- - Question 6: Changed from "What is a caliph?" to "What is the name of followers of Ali?" (Shia)
-- - Question 7: Changed from gap question about Sunni to true/false about the Sunni-Shia split
--
-- islam-tro (Beliefs):
-- - Question 1: Changed from "Islam is monotheistic" to "Islam is STRICTLY monotheistic"
-- - Question 2: Changed from "Islam means submission" to "There is only one almighty God – ___"
-- - Question 4: Changed from "Muslims believe in one God called ___" to full Shahada declaration
-- - Question 5: Changed from MCQ "What does Islam mean?" to previous question's content
-- - Question 6: Changed from TF about angels/prophets to TF about Day of Judgment
-- - Question 7: Changed from "Who is final prophet?" to "Who are earlier prophets?" (Abraham, Moses, Jesus)
--
-- islam-soylene (Five Pillars):
-- - Question 1: Changed from TF "Five Pillars are fundamental practices" to MCQ "How many daily prayers?"
-- - Question 2: Changed from MCQ "What is Shahada?" to gap question about Zakat (2.5% of wealth)
-- - Question 3: Changed from gap "Muslims pray ___ times" to TF "Muslims pray facing Mecca"
-- - Question 4: Changed from TF "Zakat is mandatory" to MCQ "What is name of pilgrimage?" (Hajj)
-- - Question 5: Changed from MCQ "What is Sawm?" to gap question about Ramadan fasting
-- - Question 6: Changed from gap about Hajj to TF about performing Hajj once in lifetime
-- - Question 7: Changed from TF "Five Pillars equally important" to MCQ "Which day is most important?" (Friday)
-- - Added Question 8: Gap question about wudu (ritual cleansing before prayer)
--
-- islam-hoytider (Holidays):
-- - Question 1: Changed from TF "Ramadan is holy month" to MCQ "What marks end of Ramadan?" (Eid al-Fitr)
-- - Question 2: Changed from gap "Muslims fast from ___ to sunset" to gap about Eid al-Adha
-- - Question 3: Changed from MCQ "What is Eid al-Fitr?" to TF about Islamic lunar calendar
-- - Question 4: Changed from TF about Eid al-Adha to MCQ "What does Eid al-Adha mark?"
-- - Question 5: Changed from MCQ "When is Eid al-Adha celebrated?" to gap about Ashura/Muharram
-- - Question 6: Changed from gap about Laylat al-Qadr to TF about Ashura for Shia Muslims
-- - Question 7: Changed from TF "Mawlid celebrates Muhammad's birthday" to MCQ about Mawlid al-Nabi
--
-- islam-tekster (Texts):
-- - All questions significantly restructured to match Norwegian source
-- - Added questions about: Angel Gabriel, suras (chapters), Hadith, Sunna, Sharia, image prohibition
-- - Added questions about: Kaaba, Islamic calligraphy, crescent-and-star symbol, green color
-- - Changed from 7 questions to 12 questions total
--
-- All English and Turkish translations now accurately reflect the Norwegian source content.
-- Add English and Turkish translations for ALL Hinduism quiz questions
-- This migration adds prompt_en, prompt_tr, meta_en, and meta_tr for all questions
-- that currently only have Norwegian text

-- ==================== HINDUISM LESSONS ====================

-- hinduisme-opprinnelse (Origins) - Question 1
UPDATE public.questions SET
  prompt_en = 'Hinduism is one of the world''s oldest religions.',
  prompt_tr = 'Hinduizm dünyanın en eski dinlerinden biridir.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Hinduisme er en av verdens eldste religioner.'
  AND type = 'tf'
  AND order_index = 0
  AND quiz_id IN (
    SELECT q.id FROM public.quizzes q
    JOIN public.lessons l ON l.id = q.lesson_id
    WHERE l.slug = 'hinduisme-opprinnelse'
  );

-- hinduisme-opprinnelse - Question 2
UPDATE public.questions SET
  prompt_en = 'What characterizes Hinduism''s origins?',
  prompt_tr = 'Hinduizm''in kökenlerini ne karakterize eder?',
  meta_en = '{"choices":[
    {"id":"a","text":"It has one single founder"},
    {"id":"b","text":"It has no single founder and arose over thousands of years","correct":true},
    {"id":"c","text":"It was founded in Egypt"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Tek bir kurucusu var"},
    {"id":"b","text":"Tek bir kurucusu yok ve binlerce yıl içinde ortaya çıktı","correct":true},
    {"id":"c","text":"Mısır''da kuruldu"}
  ]}'::jsonb
WHERE prompt = 'Hva kjennetegner hinduismens opprinnelse?'
  AND type = 'mcq';

-- hinduisme-opprinnelse - Question 3
UPDATE public.questions SET
  prompt_en = 'The earliest traces are linked to the ___ civilization (approx. 2500 BCE).',
  prompt_tr = 'En erken izler ___ uygarlığına (yaklaşık MÖ 2500) bağlıdır.',
  meta_en = '{"answer":"Indus"}'::jsonb,
  meta_tr = '{"answer":"İndus"}'::jsonb
WHERE prompt = 'De tidligste sporene knyttes til ___-sivilisasjonen (ca. 2500 fvt.).'
  AND type = 'gap';

-- hinduisme-opprinnelse - Question 4
UPDATE public.questions SET
  prompt_en = 'What is the early religion from Indo-European peoples called?',
  prompt_tr = 'Hint-Avrupa halklarından gelen erken dine ne denir?',
  meta_en = '{"choices":[
    {"id":"a","text":"Vedic religion","correct":true},
    {"id":"b","text":"Buddhism"},
    {"id":"c","text":"Jainism"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Vedik din","correct":true},
    {"id":"b","text":"Budizm"},
    {"id":"c","text":"Jainizm"}
  ]}'::jsonb
WHERE prompt = 'Hva kalles den tidlige religionen fra indoeuropeiske folkegrupper?'
  AND type = 'mcq';

-- hinduisme-opprinnelse - Question 5
UPDATE public.questions SET
  prompt_en = 'The ___ introduced the thinking about rebirth and a universal force called Brahman.',
  prompt_tr = '___, yeniden doğuş ve Brahman adlı evrensel bir güç hakkında düşünceyi tanıttı.',
  meta_en = '{"answer":"Upanishads"}'::jsonb,
  meta_tr = '{"answer":"Upanişadlar"}'::jsonb
WHERE prompt = '___ introduserte tenkningen om gjenfødsel og en universell kraft kalt Brahman.'
  AND type = 'gap';

-- hinduisme-opprinnelse - Question 6
UPDATE public.questions SET
  prompt_en = 'Bhagavad Gita is a philosophical dialogue where Krishna guides Prince Arjuna.',
  prompt_tr = 'Bhagavad Gita, Krishna''nın Prens Arjuna''ya rehberlik ettiği felsefi bir diyalogdur.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Bhagavad Gita er en filosofisk dialog hvor Krishna veileder prins Arjuna.'
  AND type = 'tf';

-- hinduisme-opprinnelse - Question 7
UPDATE public.questions SET
  prompt_en = 'What is the bhakti movement?',
  prompt_tr = 'Bhakti hareketi nedir?',
  meta_en = '{"choices":[
    {"id":"a","text":"A political movement"},
    {"id":"b","text":"A direction based on personal devotion to the divine","correct":true},
    {"id":"c","text":"A warrior order"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Politik bir hareket"},
    {"id":"b","text":"İlahi''ye kişisel bağlılığa dayalı bir yön","correct":true},
    {"id":"c","text":"Bir savaşçı düzeni"}
  ]}'::jsonb
WHERE prompt = 'Hva er bhakti-bevegelsen?'
  AND type = 'mcq';

-- hinduisme-tro (Beliefs) - Question 1
UPDATE public.questions SET
  prompt_en = 'The belief in ___ (reincarnation) is central to Hinduism.',
  prompt_tr = '___ (reenkarnasyon) inancı Hinduizm için merkezidir.',
  meta_en = '{"answer":"rebirth"}'::jsonb,
  meta_tr = '{"answer":"yeniden doğuş"}'::jsonb
WHERE prompt = 'Troen på ___ (reinkarnasjon) er sentral i hinduismen.'
  AND type = 'gap'
  AND order_index = 0;

-- hinduisme-tro - Question 2
UPDATE public.questions SET
  prompt_en = 'What influences one''s future life in Hinduism?',
  prompt_tr = 'Hinduizm''de gelecekteki yaşamı ne etkiler?',
  meta_en = '{"choices":[
    {"id":"a","text":"Randomness"},
    {"id":"b","text":"Karma (consequences of actions)","correct":true},
    {"id":"c","text":"Just luck"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Rastlantı"},
    {"id":"b","text":"Karma (eylemlerin sonuçları)","correct":true},
    {"id":"c","text":"Sadece şans"}
  ]}'::jsonb
WHERE prompt = 'Hva påvirker ens fremtidige liv i hinduismen?'
  AND type = 'mcq';

-- hinduisme-tro - Question 3
UPDATE public.questions SET
  prompt_en = 'The ultimate goal of life is to achieve ___ (liberation from the cycle of rebirth).',
  prompt_tr = 'Yaşamın nihai amacı ___ (yeniden doğuş döngüsünden kurtuluş) elde etmektir.',
  meta_en = '{"answer":"moksha"}'::jsonb,
  meta_tr = '{"answer":"mokşa"}'::jsonb
WHERE prompt = 'Livets endelige mål er å oppnå ___ (frigjøring fra gjenfødelsens kretsløp).'
  AND type = 'gap';

-- hinduisme-tro - Question 4
UPDATE public.questions SET
  prompt_en = 'Brahman is considered the all-encompassing divine principle.',
  prompt_tr = 'Brahman, her şeyi kapsayan ilahi ilke olarak kabul edilir.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Brahman anses som det altomfattende guddommelige prinsipp.'
  AND type = 'tf';

-- hinduisme-tro - Question 5
UPDATE public.questions SET
  prompt_en = 'Which three deities are most central in Hinduism?',
  prompt_tr = 'Hinduizm''de en merkezi üç tanrı hangileridir?',
  meta_en = '{"choices":[
    {"id":"a","text":"Vishnu, Shiva, and Devi","correct":true},
    {"id":"b","text":"Rama, Sita, and Hanuman"},
    {"id":"c","text":"Krishna, Arjuna, and Ganesha"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Vişnu, Şiva ve Devi","correct":true},
    {"id":"b","text":"Rama, Sita ve Hanuman"},
    {"id":"c","text":"Krishna, Arjuna ve Ganeş"}
  ]}'::jsonb
WHERE prompt = 'Hvilke tre guddommer er mest sentrale i hinduismen?'
  AND type = 'mcq';

-- hinduisme-tro - Question 6
UPDATE public.questions SET
  prompt_en = 'Vishnu descends to earth in different ___ to restore balance.',
  prompt_tr = 'Vişnu dengeyi yeniden kurmak için farklı ___ şeklinde dünyaya iner.',
  meta_en = '{"answer":"avatars"}'::jsonb,
  meta_tr = '{"answer":"avatarlar"}'::jsonb
WHERE prompt = 'Vishnu stiger ned til jorden i ulike ___ for å gjenopprette balansen.'
  AND type = 'gap';

-- hinduisme-tro - Question 7
UPDATE public.questions SET
  prompt_en = 'Shiva represents both creator and destroyer power.',
  prompt_tr = 'Şiva hem yaratıcı hem de yıkıcı gücü temsil eder.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Shiva representerer skaper- og ødeleggermakt.'
  AND type = 'tf';

-- hinduisme-praksis (Practices) - Question 1
UPDATE public.questions SET
  prompt_en = 'Daily worship in Hinduism is called ___.',
  prompt_tr = 'Hinduizm''de günlük ibadete ___ denir.',
  meta_en = '{"answer":"puja"}'::jsonb,
  meta_tr = '{"answer":"puja"}'::jsonb
WHERE prompt = 'Daglig tilbedelse i hinduismen kalles ___.'
  AND type = 'gap'
  AND order_index = 0;

-- hinduisme-praksis - Question 2
UPDATE public.questions SET
  prompt_en = 'What is prasada?',
  prompt_tr = 'Prasad nedir?',
  meta_en = '{"choices":[
    {"id":"a","text":"A deity"},
    {"id":"b","text":"Blessed food returned from the deity","correct":true},
    {"id":"c","text":"A temple"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Bir tanrı"},
    {"id":"b","text":"Tanrıdan dönen kutsanmış yiyecek","correct":true},
    {"id":"c","text":"Bir tapınak"}
  ]}'::jsonb
WHERE prompt = 'Hva er prasada?'
  AND type = 'mcq';

-- hinduisme-praksis - Question 3
UPDATE public.questions SET
  prompt_en = 'Most Hindus have a small home altar.',
  prompt_tr = 'Çoğu Hindu''nun küçük bir ev sunağı vardır.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'De fleste hinduer har et lite husalter hjemme.'
  AND type = 'tf';

-- hinduisme-praksis - Question 4
UPDATE public.questions SET
  prompt_en = 'The principle of ___ (non-violence) has contributed to many Hindus being vegetarians.',
  prompt_tr = '___ (şiddet karşıtlığı) ilkesi, birçok Hindu''nun vejetaryen olmasına katkıda bulunmuştur.',
  meta_en = '{"answer":"ahimsa"}'::jsonb,
  meta_tr = '{"answer":"ahimsa"}'::jsonb
WHERE prompt = 'Prinsippet om ___ (ikke-vold) har bidratt til at mange hinduer er vegetarianere.'
  AND type = 'gap';

-- hinduisme-praksis - Question 5
UPDATE public.questions SET
  prompt_en = 'Which river is considered sacred in Hinduism?',
  prompt_tr = 'Hinduizm''de hangi nehir kutsal kabul edilir?',
  meta_en = '{"choices":[
    {"id":"a","text":"The Nile"},
    {"id":"b","text":"The Ganges","correct":true},
    {"id":"c","text":"The Jordan"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Nil"},
    {"id":"b","text":"Ganj","correct":true},
    {"id":"c","text":"Ürdün"}
  ]}'::jsonb
WHERE prompt = 'Hvilken elv anses som hellig i hinduismen?'
  AND type = 'mcq'
  AND order_index = 4;

-- hinduisme-praksis - Question 6
UPDATE public.questions SET
  prompt_en = 'The cow is seen as a sacred animal in Hinduism.',
  prompt_tr = 'İnek Hinduizm''de kutsal bir hayvan olarak görülür.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Kua sees som et hellig dyr i hinduismen.'
  AND type = 'tf';

-- hinduisme-praksis - Question 7
UPDATE public.questions SET
  prompt_en = 'Hindu religious teachers are called ___.',
  prompt_tr = 'Hindu dini öğretmenlere ___ denir.',
  meta_en = '{"answer":"gurus"}'::jsonb,
  meta_tr = '{"answer":"gurular"}'::jsonb
WHERE prompt = 'Hinduiske religiøse lærere kalles ___.'
  AND type = 'gap';

-- hinduisme-hoytider (Holidays) - Question 1
UPDATE public.questions SET
  prompt_en = 'Which two holidays are most famous in Hinduism?',
  prompt_tr = 'Hinduizm''de en ünlü iki bayram hangileridir?',
  meta_en = '{"choices":[
    {"id":"a","text":"Christmas and Easter"},
    {"id":"b","text":"Diwali and Holi","correct":true},
    {"id":"c","text":"Ramadan and Eid"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Noel ve Paskalya"},
    {"id":"b","text":"Diwali ve Holi","correct":true},
    {"id":"c","text":"Ramazan ve Bayram"}
  ]}'::jsonb
WHERE prompt = 'Hvilke to høytider er mest kjente i hinduismen?'
  AND type = 'mcq';

-- hinduisme-hoytider - Question 2
UPDATE public.questions SET
  prompt_en = '___ is a festival of lights that marks the triumph of light over darkness.',
  prompt_tr = '___, ışığın karanlığa galibiyetini işaret eden bir ışık festivalidir.',
  meta_en = '{"answer":"Diwali"}'::jsonb,
  meta_tr = '{"answer":"Diwali"}'::jsonb
WHERE prompt = '___ er en lysfest som markerer lysets triumf over mørket.'
  AND type = 'gap';

-- hinduisme-hoytider - Question 3
UPDATE public.questions SET
  prompt_en = 'During Diwali, the goddess Lakshmi (goddess of prosperity) is honored.',
  prompt_tr = 'Diwali sırasında tanrıça Lakşmi (refah tanrıçası) onurlandırılır.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Under Divali æres gudinnen Lakshmi (velstandens gudinne).'
  AND type = 'tf';

-- hinduisme-hoytider - Question 4
UPDATE public.questions SET
  prompt_en = 'When is Holi celebrated?',
  prompt_tr = 'Holi ne zaman kutlanır?',
  meta_en = '{"choices":[
    {"id":"a","text":"Winter"},
    {"id":"b","text":"Spring (February/March)","correct":true},
    {"id":"c","text":"Autumn"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Kış"},
    {"id":"b","text":"İlkbahar (Şubat/Mart)","correct":true},
    {"id":"c","text":"Sonbahar"}
  ]}'::jsonb
WHERE prompt = 'Når feires Holi?'
  AND type = 'mcq';

-- hinduisme-hoytider - Question 5
UPDATE public.questions SET
  prompt_en = 'During Holi, people throw colored ___ and water at each other.',
  prompt_tr = 'Holi sırasında insanlar birbirlerine renkli ___ ve su atarlar.',
  meta_en = '{"answer":"powder"}'::jsonb,
  meta_tr = '{"answer":"toz"}'::jsonb
WHERE prompt = 'Under Holi kaster folk farget ___ og vann på hverandre.'
  AND type = 'gap';

-- hinduisme-hoytider - Question 6
UPDATE public.questions SET
  prompt_en = 'Navaratri lasts nine nights and celebrates the triumph of good over evil.',
  prompt_tr = 'Navaratri dokuz gece sürer ve iyiliğin kötülüğe galibiyetini kutlar.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Navaratri varer i ni netter og feirer det godes seier over det onde.'
  AND type = 'tf';

-- hinduisme-hoytider - Question 7
UPDATE public.questions SET
  prompt_en = 'What is celebrated during Krishna Janmashtami?',
  prompt_tr = 'Krishna Janmashtami''de ne kutlanır?',
  meta_en = '{"choices":[
    {"id":"a","text":"Krishna''s wedding"},
    {"id":"b","text":"Krishna''s birthday","correct":true},
    {"id":"c","text":"Krishna''s death"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Krishna''nın düğünü"},
    {"id":"b","text":"Krishna''nın doğum günü","correct":true},
    {"id":"c","text":"Krishna''nın ölümü"}
  ]}'::jsonb
WHERE prompt = 'Hva feires under Krishna Janmashtami?'
  AND type = 'mcq';

-- hinduisme-tekster (Texts) - Question 1
UPDATE public.questions SET
  prompt_en = 'The most important shruti scripture collection is ___.',
  prompt_tr = 'En önemli shruti yazı koleksiyonu ___''dir.',
  meta_en = '{"answer":"the Vedas"}'::jsonb,
  meta_tr = '{"answer":"Vedalar"}'::jsonb
WHERE prompt = 'Den viktigste shruti-skriftsamlingen er ___.'
  AND type = 'gap';

-- hinduisme-tekster - Question 2
UPDATE public.questions SET
  prompt_en = 'How old is the Rigveda, the oldest of the Vedas?',
  prompt_tr = 'Vedaların en eskisi olan Rigveda ne kadar eski?',
  meta_en = '{"choices":[
    {"id":"a","text":"500 years"},
    {"id":"b","text":"At least 3000 years","correct":true},
    {"id":"c","text":"100 years"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"500 yıl"},
    {"id":"b","text":"En az 3000 yıl","correct":true},
    {"id":"c","text":"100 yıl"}
  ]}'::jsonb
WHERE prompt = 'Hvor gammel er Rigveda, den eldste av Vedaene?'
  AND type = 'mcq';

-- hinduisme-tekster - Question 3
UPDATE public.questions SET
  prompt_en = 'Atman (the individual soul) is identical with Brahman (the universal soul) according to the Upanishads.',
  prompt_tr = 'Atman (bireysel ruh), Upanişadlara göre Brahman (evrensel ruh) ile aynıdır.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Atman (individets sjel) er identisk med Brahman (den universelle sjel) ifølge Upanishadene.'
  AND type = 'tf';

-- hinduisme-tekster - Question 4
UPDATE public.questions SET
  prompt_en = 'Which two great epics are most famous in Hinduism?',
  prompt_tr = 'Hinduizm''de en ünlü iki büyük destan hangisidir?',
  meta_en = '{"choices":[
    {"id":"a","text":"The Bible and the Quran"},
    {"id":"b","text":"Ramayana and Mahabharata","correct":true},
    {"id":"c","text":"The Iliad and the Odyssey"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"İncil ve Kuran"},
    {"id":"b","text":"Ramayana ve Mahabharata","correct":true},
    {"id":"c","text":"İlyada ve Odysseia"}
  ]}'::jsonb
WHERE prompt = 'Hvilke to store eposer er mest berømte i hinduismen?'
  AND type = 'mcq';

-- hinduisme-tekster - Question 5
UPDATE public.questions SET
  prompt_en = '___ is a sacred sound and symbol representing the primordial sound of the divine universe.',
  prompt_tr = '___, ilahi evrenin ilkel sesini temsil eden kutsal bir ses ve semboldür.',
  meta_en = '{"answer":"Om"}'::jsonb,
  meta_tr = '{"answer":"Om"}'::jsonb
WHERE prompt = '___ er en hellig lyd og et symbol som representerer det guddommelige universets urlyd.'
  AND type = 'gap';

-- hinduisme-tekster - Question 6
UPDATE public.questions SET
  prompt_en = 'In Hindu tradition, the swastika is an ancient symbol of good fortune.',
  prompt_tr = 'Hindu geleneğinde svastika, iyi şansın eski bir sembolüdür.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'I hinduistisk tradisjon er swastikaen et eldgammelt lykkesymbol.'
  AND type = 'tf';

-- hinduisme-tekster - Question 7
UPDATE public.questions SET
  prompt_en = 'What does the lotus flower symbolize?',
  prompt_tr = 'Lotus çiçeği neyi simgeler?',
  meta_en = '{"choices":[
    {"id":"a","text":"War"},
    {"id":"b","text":"Purity and spiritual unfolding","correct":true},
    {"id":"c","text":"Death"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Savaş"},
    {"id":"b","text":"Saflık ve ruhsal gelişim","correct":true},
    {"id":"c","text":"Ölüm"}
  ]}'::jsonb
WHERE prompt = 'Hva symboliserer lotusblomsten?'
  AND type = 'mcq';

-- hinduisme-tekster - Question 8
UPDATE public.questions SET
  prompt_en = 'Shruti texts are considered revealed texts, while ___ texts are human-created.',
  prompt_tr = 'Shruti metinleri vahiy metinleri olarak kabul edilirken, ___ metinleri insan yapımıdır.',
  meta_en = '{"answer":"smriti"}'::jsonb,
  meta_tr = '{"answer":"smriti"}'::jsonb
WHERE prompt = 'Shruti-tekstene anses som åpenbarte tekster, mens ___-tekstene er menneskeskapte.'
  AND type = 'gap';

-- hinduisme-moderne (Modern) - Question 1
UPDATE public.questions SET
  prompt_en = 'Approximately how many Hindus are there in the world?',
  prompt_tr = 'Dünyada yaklaşık kaç Hindu vardır?',
  meta_en = '{"choices":[
    {"id":"a","text":"100 million"},
    {"id":"b","text":"1.2 billion","correct":true},
    {"id":"c","text":"5 billion"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"100 milyon"},
    {"id":"b","text":"1,2 milyar","correct":true},
    {"id":"c","text":"5 milyar"}
  ]}'::jsonb
WHERE prompt = 'Omtrent hvor mange hinduer er det i verden?'
  AND type = 'mcq';

-- hinduisme-moderne - Question 2
UPDATE public.questions SET
  prompt_en = 'Hinduism is the majority religion in India and ___.',
  prompt_tr = 'Hinduizm, Hindistan ve ___''da çoğunluk dinidir.',
  meta_en = '{"answer":"Nepal"}'::jsonb,
  meta_tr = '{"answer":"Nepal"}'::jsonb
WHERE prompt = 'Hinduismen er majoritetsreligionen i India og ___.'
  AND type = 'gap';

-- hinduisme-moderne - Question 3
UPDATE public.questions SET
  prompt_en = 'What are the three main directions in Hinduism based on?',
  prompt_tr = 'Hinduizm''deki üç ana yön neye dayanır?',
  meta_en = '{"choices":[
    {"id":"a","text":"Different temples"},
    {"id":"b","text":"Which deity is at the center","correct":true},
    {"id":"c","text":"Different countries"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Farklı tapınaklar"},
    {"id":"b","text":"Hangi tanrının merkezde olduğu","correct":true},
    {"id":"c","text":"Farklı ülkeler"}
  ]}'::jsonb
WHERE prompt = 'Hva er de tre hovedretningene i hinduismen basert på?'
  AND type = 'mcq';

-- hinduisme-moderne - Question 4
UPDATE public.questions SET
  prompt_en = 'Vaishnavism focuses on Vishnu and his avatars such as Krishna and ___.',
  prompt_tr = 'Vişnuizm, Vişnu ve Krishna ve ___ gibi avatarlarına odaklanır.',
  meta_en = '{"answer":"Rama"}'::jsonb,
  meta_tr = '{"answer":"Rama"}'::jsonb
WHERE prompt = 'Vishnuismen fokuserer på Vishnu og hans avatarer som Krishna og ___.'
  AND type = 'gap';

-- hinduisme-moderne - Question 5
UPDATE public.questions SET
  prompt_en = 'Swami Vivekananda presented Hinduism at the World Parliament of Religions in Chicago in 1893.',
  prompt_tr = 'Swami Vivekananda, 1893''te Chicago''daki Dünya Dinler Parlamentosu''nda Hinduizm''i sundu.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Swami Vivekananda presenterte hinduismen på Verdensparlamentet for religioner i Chicago i 1893.'
  AND type = 'tf';

-- hinduisme-moderne - Question 6
UPDATE public.questions SET
  prompt_en = 'What is ISKCON also known as?',
  prompt_tr = 'ISKCON ayrıca ne olarak bilinir?',
  meta_en = '{"choices":[
    {"id":"a","text":"Buddhism"},
    {"id":"b","text":"The Hare Krishna movement","correct":true},
    {"id":"c","text":"Jainism"}
  ]}'::jsonb,
  meta_tr = '{"choices":[
    {"id":"a","text":"Budizm"},
    {"id":"b","text":"Hare Krishna hareketi","correct":true},
    {"id":"c","text":"Jainizm"}
  ]}'::jsonb
WHERE prompt = 'Hva er ISKCON også kjent som?'
  AND type = 'mcq';

-- hinduisme-moderne - Question 7
UPDATE public.questions SET
  prompt_en = 'Many Hindus practice ___ and meditation, also popular in the West.',
  prompt_tr = 'Birçok Hindu ___ ve meditasyon uygular, Batı''da da popülerdir.',
  meta_en = '{"answer":"yoga"}'::jsonb,
  meta_tr = '{"answer":"yoga"}'::jsonb
WHERE prompt = 'Mange hinduer praktiserer ___ og meditasjon, også populært i Vesten.'
  AND type = 'gap';

-- hinduisme-moderne - Question 8
UPDATE public.questions SET
  prompt_en = 'Hinduism values tolerance and pluralism – the ideal that there are many paths to the divine.',
  prompt_tr = 'Hinduizm hoşgörü ve çoğulculuğu değerlendirir – ilahiye giden birçok yol olduğu ideali.',
  meta_en = '{"answer": true}'::jsonb,
  meta_tr = '{"answer": true}'::jsonb
WHERE prompt = 'Hinduismen verdsetter toleranse og pluralisme – idealet om at det finnes mange veier til det guddommelige.'
  AND type = 'tf';

-- ==================== CORRECTIONS SUMMARY ====================
--
-- Key Changes Made to Match Norwegian Source:
--
-- hinduisme-opprinnelse (Origins):
-- - Question 2: Changed "developed over thousands of years" to "arose over thousands of years"
-- - All other questions match correctly
--
-- hinduisme-tro (Beliefs):
-- - Question 2: Changed "Random chance" to "Randomness" for consistency
-- - Question 7: Changed "creative and destructive" to "creator and destroyer"
-- - All translations updated to match Norwegian source
--
-- hinduisme-praksis (Practices):
-- - All questions correctly match Norwegian source
-- - No changes needed
--
-- hinduisme-hoytider (Holidays):
-- - All questions correctly match Norwegian source
-- - No changes needed
--
-- hinduisme-tekster (Texts):
-- - Question 4: Changed from gap question about Ramayana to MCQ about "two great epics"
-- - Question 5: Changed from TF about Mahabharata to gap question about Om symbol
-- - Question 6: Changed from MCQ about Om symbol to TF about swastika
-- - Question 7: Changed from gap about swastika to MCQ about lotus flower symbolism
-- - Added Question 8: Gap question about shruti vs smriti texts
-- - Restructured from 7 to 8 questions to match Norwegian source
--
-- hinduisme-moderne (Modern):
-- - Question 1: Changed from TF "Hinduism is dominant in India" to MCQ "How many Hindus worldwide?"
-- - Question 2: Changed from MCQ about numbers to gap question about India and Nepal
-- - Question 3: Added new MCQ about three main directions based on deity worship
-- - Question 4: Added gap question about Vaishnavism (Krishna and Rama)
-- - Question 5: Changed from MCQ about spread to TF about Swami Vivekananda
-- - Question 6: Changed from TF about caste system to MCQ about ISKCON/Hare Krishna
-- - Question 7: Changed from gap about Gandhi to gap about yoga and meditation
-- - Added Question 8: TF about tolerance and pluralism in Hinduism
-- - Restructured from 7 to 8 questions to match Norwegian source
--
-- All English and Turkish translations now accurately reflect the Norwegian source content.