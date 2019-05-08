searchFile="/Users/manojgopale/Manoj/NLP/2018AB-full/UMLS_install/2018AB/META/MRCONSO_FN.txt"
resultFile="/Users/manojgopale/Manoj/NLP/datasets/scr/consoGrep.txt"

## https://www.nlm.nih.gov/research/umls/knowledge_sources/metathesaurus/release/abbreviations.html 
## TTY (Term Type in Source)
## FN - Full form of descriptor is used to filter out terms

#egrep "10001005|10085004|102491009|102564009|102565005|102608004|102911000|102938007|103281005|103298005|105981003|108367008|110288007|111224002|11381005|118930001|118940003|119416008|124042003|12441001|125610000|127354003|128601007|128605003|128609009|129859006|129899009|131053002|131078003|13164000|13481000168104|13543005|13644009|14304000|14351000168102|14669001|15188001|15203004|15336001|15611000168108|16001004|160591008|160685001|161156004|161722004|161833006|161876008|161968007|162020001|162308004|162315007|162351000|166603001|166702002|177241000036105|1806006|18156008|183202003|186748004|18718003|19155002|191736004|192085004|193000002|193031009|193570009|194828000|202484005|202490009|202609006|202617003|209777000|21290011000036109|21304011000036105|21317011000036101|21395011000036107|21465011000036101|21499005|21540011000036109|21589011000036108|21605011000036100|21624011000036105|21676011000036101|21678011000036102|21747011000036106|21809011000036108|21814011000036109|21839011000036103|21911011000036104|22095011000036109|22193007|225005002|225013001|225460000|225473001|225482007|225508006|230490003|230645003|230736007|23388006|23520002|235594008|235999009|236071009|236632007|237602007|238539001|23919004|239725005|239873007|240014001|240015000|246682000|246975001|247355005|247408001|247412007|247761005|247806005|247994001|248223005|248234008|248256006|248268002|248422003|248493003|248581005|248648003|248653008|248657009|248966006|249366005|249477003|249544004|24982008|249903005|249912007|249916005|249931001|249985001|249990003|250991000119100|251377007|253522006|25458004|254935002|25701000168107|262966007|26677001|267073005|267076002|267078001|267728009|271584002|271585001|271596009|271599002|271771009|271795006|271873000|271951008|272022009|274135002|274141009|274646000|274665008|276294005|276444007|277890004|278286009|278999000|279028009|279043006|279063004|279093005|281794004|282198006|282475008|282872002|282926000|282937004|282966001|283050005|283121001|283416005|283902008|284136008|284146005|284149003|284252000|284977008|285305004|285397001|286387000|286651000|287046004|288225004|289001005|289621007|289669005|2922011000036103|2940011000036100|297144002|298170003|298203008|298240000|298241001|298751004|298870001|298941006|299110002|299377003|299933002|300043006|3003011000036100|300439004|300650009|300888008|300895004|300956001|301026000|301657001|301660008|301717006|302188001|304297005|3066011000036105|307074005|307077003|307413004|307731004|308909003|308921004|309256001|309257005|309838005|314642004|314983004|315642008|31645011000036106|3191011000036109|31911000168108|32402008|32972011000036104|332982000|3475011000036104|34789001|3481000168101|35064005|35209006|3527011000036101|3563011000036102|3589011000036101|361122008|361138002|36163009|363058009|363406005|363499005|3659011000036102|366979004|3702011000036109|3716002|372283008|37340000|3736011000036100|37567005|37703011000036109|37714011000036108|37787011000036104|38013005|38181000168109|386805003|387801000|38936003|3934011000036103|39423001|39592011000036106|39651011000036100|39701011000036102|397541004|398114001|398151007|398152000|398979000|399044006|399068003|401269004|40144003|402234004|40445007|40739000|409589004|4106009|414469009|4156011000036108|415692008|416675009|41931001|419511003|41982003|420990001|423052008|42345000|423849004|424131007|424372002|424582000|425772008|426120002|428281000|428724006|429360005|429661002|4308002|43364001|439953004|44018007|440630006|44169009|443120002|443694000|443798008|443892003|444003007|444312002|444702007|445197008|44564008|449618007|450316000|45291000168107|45534005|46040000|46206005|473008002|47401000168109|48661000|49563000|49601007|4969004|50415004|50829006|51590001|52072009|52526003|52754008|54020011000036108|54150009|55222007|55260003|55891002|56018004|56273005|5662003|56925008|571000119103|58901008|59026006|59781000168101|59976005|6020002|609410002|61462000|61777011000036104|6211002|6285003|6389006|63901009|64206003|64379006|64531003|64766004|64779008|6496011000036105|66383009|67015007|67362008|68172002|68449006|69215007|69322001|69821011000036104|69867011000036102|699262001|699302001|699368004|699376002|70270011000036104|70323002|70346000|71262003|73442001|7393007|74732009|7501002|75183008|75408008|76376003|77426011000036108|77442011000036106|77981007|79012001|79015004|79395009|7973008|8009008|80515008|80585000|80954004|80967001|81308009|82297005|82470000|82639001|82883008|83156004|83225011000036106|83901003|84114007|84480002|85828009|85898001|86094006|89419008|90128006|90834002|923927011000036105|93478000|95319004|95320005|95453001|95570007|95655001|95673003|95677002|9829001|102572006|102598000|102617004|102897001|105504002|11072008|111516008|122481008|124055002|128239009|134407002|161903000|162221009|165509000|166584001|17369002|17971005|18101008|18165001|202472008|202852009|21005005|21238011000036103|21290011000036100|21296011000036107|21322011000036108|21486011000036105|21659011000036107|225549006|225581002|225601007|228148009|2297011000036108|233604007|23502006|239965002|246676003|248262001|249898006|249902000|249914008|249917001|249918006|249940002|2531000168109|26171000168109|262558009|26413003|266257000|266599000|266601003|267038008|267045008|267079009|267950000|271137009|271713000|271737000|271787007|271834000|271835004|27355003|274667000|2764000|279069000|284143002|284151004|284262007|285395009|285849008|286369003|286381004|286755001|287045000|28743005|288332005|288335007|29164008|2929011000036108|299954009|300381009|300955002|304534000|307496006|30811009|309249007|310495003|31384009|31681005|32970011000036103|33308003|34839011000036106|3545003|35678005|35918011000036106|36630001|367466007|370143000|371081002|371632003|373932008|39621005|397803000|399269003|40095003|40196000|40806005|40930008|415749005|41652007|418648005|419076005|420103007|421262002|4230011000036107|424196004|4249000|426965005|427475007|429340002|429513001|43005009|44186003|4422011000036109|444899003|445178008|44548000|449614009|45979003|46991000|473011001|52448006|56317004|59927004|60728008|609599003|61387006|61599003|67233009|68235000|70076002|70153002|75088002|76000011000036107|77422011000036109|77547008|78584011000036106|78860006|81498004|81680008|82272006|83421005|84946008|91019004|95359001|101000119102|102498003|102943000|103002009|10743008|118932009|12584003|129103003|130989002|13746004|1402001|14151009|161898004|162116003|16269008|165232002|166848004|167232003|18193002|202482009|202855006|21134002|21252011000036100|21286011000036106|21520011000036107|21606011000036107|21662011000036107|21821011000036104|22325002|224962007|225610004|22631008|236423003|237130006|238131007|239720000|247464001|247472004|248132003|249472009|249489001|26237000|26889001|271767006|271801002|274676007|275921007|277223000|279084009|280816001|282180007|299037003|299322007|301679006|30473006|308925008|309557009|310501001|315224006|3210011000036104|3253007|32643011000036106|32798002|34095006|3572011000036102|361137007|36971009|371405004|397540003|4138011000036106|417237009|424647005|429040005|42984000|43498006|445445006|44695005|448589005|46635009|4740000|48926009|52702003|53741008|55350005|609600000|61372001|6205011000036102|6206011000036109|64226004|67251005|68566005|69813011000036107|698247007|7006003|7011001|80182007|82423001|8392000|90446007|95418008|95421005|95847005|116289008|11654001|12063002|125667009|161874006|162043005|21433011000036107|21719011000036107|225014007|23056005|236620008|247441003|247753000|248236005|249915009|249938007|258155009|267064002|26929004|271870002|275319005|281016006|281245003|284140004|287047008|288227007|288885009|299042006|299060006|309087008|309536001|314109004|32398004|373931001|39400004|396275006|397825006|399114005|399122003|40733004|418092006|428061005|43116000|432352001|444827008|48532005|50219008|53430007|53523011000036100|54586004|56731001|57406009|59050008|6471006|72405004|73589001|75694006|76742009|82971005|83547004|87486003|9126005|193093009|202480001|21343011000036103|21545007|24199005|247323005|247347003|248491001|267949000|267953003|271594007|274279008|274663001|282195009|297217002|298753001|301202006|3298011000036103|363346000|36955009|386806002|405729008|419145002|419581008|47004009|47268002|55145008|70733008|77461011000036109|80690008|84017003|85418005|102480002|162352007|165247006|18876004|195967001|197321007|21496011000036106|21779011000036103|248096004|249913002|250082003|262286000|271832001|278528006|279038004|288230000|309538000|309539008|3530011000036104|3559011000036109|420038007|4216011000036104|426899007|4344011000036106|44054006|52613005|56608008|62476001|86651002|8708008|89362005|162290004|162397003|166892002|213257006|21565011000036108|225624000|23924001|248277009|250069006|267039000|288228002|300306001|3424008|398032003|43724002|449918009|57182000|8510008|16046003|202882003|203095000|225609009|240131006|267044007|288226003|288939007|289195008|29542008|3080011000036109|309086004|309537005|310497006|34436003|36349006|386661006|39575007|415690000|42399005|69791001|90708001|161873000|16386004|16973004|214264003|238810007|297142003|301676004|38341003|429783005|48500005|53215011000036102|53458011000036102|6142004|69896004|77436011000036106|84445001|128139000|16331000|166717003|230145002|249966004|2733002|282299006|386692008|418363000|425423002|49727002|55533009|73595000|79890006|87715008|90560007|931804011000036107|161882006|166643006|200936003|21288011000036105|26329005|285365001|286641001|289903006|309521004|32914008|36031001|39104002|431416001|77692006|162031009|21885011000036105|24184005|4171011000036100|49049000|78514002|9991008|102551008|230690007|24700007|247640008|267032009|302226006|34840004|80313002|166830008|21242011000036102|250084002|271782001|37796009|386033004|426206001|67849003|698065002|74323005|21417011000036105|235856003|40917007|45352006|53057004|86044005|18963009|277521002|367391008|60862001|65124004|21930011000036101|73211009|24693007|288231001|387603000|422400008|60238002|247373008|26079004|60119000|267052005|289530006|4031011000036106|55929007|267031002|267036007|56265001|8357008|8943002|124054003|248255005|386705008|418290006|54981004|77435011000036104|21522001|248274002|60032008|63102001|90673000|131148009|300954003|301345002|102556003|271587009|282145008|399153001|44077006|162059005|271807003|28551000168108|80449002|95891005|51197009|29857009|3848011000036104|247592009|129565002|248490000|14760008|279039007|48694002|246636008|386807006|82991003|224960004|419723007|88092000|77424011000036100|22298006|278040002|3904011000036106|81680005|3723001|309774006|47933007|271681002|45326000|3384011000036100|30989003|422587007|228158008|404640003|49218002|193462001|48167000|26544005|449917004|62507009|62315008|10601006|161891005|13791008|3877011000036101|25064002|162076009|35489007|57676002|55300003|84229001|76948002|68962001|22253000" $searchFile | egrep "SNOMEDCT_US" | egrep "\|FN\|" | egrep "(disorder)" | cut -d "|" -f1,10 | sort | uniq -c | sort > $resultFile
egrep "10001005|10085004|102491009|102564009|102565005|102608004|102911000|102938007|103281005|103298005|105981003|108367008|110288007|111224002|11381005|118930001|118940003|119416008|124042003|12441001|125610000|127354003|128601007|128605003|128609009|129859006|129899009|131053002|131078003|13164000|13481000168104|13543005|13644009|14304000|14351000168102|14669001|15188001|15203004|15336001|15611000168108|16001004|160591008|160685001|161156004|161722004|161833006|161876008|161968007|162020001|162308004|162315007|162351000|166603001|166702002|177241000036105|1806006|18156008|183202003|186748004|18718003|19155002|191736004|192085004|193000002|193031009|193570009|194828000|202484005|202490009|202609006|202617003|209777000|21290011000036109|21304011000036105|21317011000036101|21395011000036107|21465011000036101|21499005|21540011000036109|21589011000036108|21605011000036100|21624011000036105|21676011000036101|21678011000036102|21747011000036106|21809011000036108|21814011000036109|21839011000036103|21911011000036104|22095011000036109|22193007|225005002|225013001|225460000|225473001|225482007|225508006|230490003|230645003|230736007|23388006|23520002|235594008|235999009|236071009|236632007|237602007|238539001|23919004|239725005|239873007|240014001|240015000|246682000|246975001|247355005|247408001|247412007|247761005|247806005|247994001|248223005|248234008|248256006|248268002|248422003|248493003|248581005|248648003|248653008|248657009|248966006|249366005|249477003|249544004|24982008|249903005|249912007|249916005|249931001|249985001|249990003|250991000119100|251377007|253522006|25458004|254935002|25701000168107|262966007|26677001|267073005|267076002|267078001|267728009|271584002|271585001|271596009|271599002|271771009|271795006|271873000|271951008|272022009|274135002|274141009|274646000|274665008|276294005|276444007|277890004|278286009|278999000|279028009|279043006|279063004|279093005|281794004|282198006|282475008|282872002|282926000|282937004|282966001|283050005|283121001|283416005|283902008|284136008|284146005|284149003|284252000|284977008|285305004|285397001|286387000|286651000|287046004|288225004|289001005|289621007|289669005|2922011000036103|2940011000036100|297144002|298170003|298203008|298240000|298241001|298751004|298870001|298941006|299110002|299377003|299933002|300043006|3003011000036100|300439004|300650009|300888008|300895004|300956001|301026000|301657001|301660008|301717006|302188001|304297005|3066011000036105|307074005|307077003|307413004|307731004|308909003|308921004|309256001|309257005|309838005|314642004|314983004|315642008|31645011000036106|3191011000036109|31911000168108|32402008|32972011000036104|332982000|3475011000036104|34789001|3481000168101|35064005|35209006|3527011000036101|3563011000036102|3589011000036101|361122008|361138002|36163009|363058009|363406005|363499005|3659011000036102|366979004|3702011000036109|3716002|372283008|37340000|3736011000036100|37567005|37703011000036109|37714011000036108|37787011000036104|38013005|38181000168109|386805003|387801000|38936003|3934011000036103|39423001|39592011000036106|39651011000036100|39701011000036102|397541004|398114001|398151007|398152000|398979000|399044006|399068003|401269004|40144003|402234004|40445007|40739000|409589004|4106009|414469009|4156011000036108|415692008|416675009|41931001|419511003|41982003|420990001|423052008|42345000|423849004|424131007|424372002|424582000|425772008|426120002|428281000|428724006|429360005|429661002|4308002|43364001|439953004|44018007|440630006|44169009|443120002|443694000|443798008|443892003|444003007|444312002|444702007|445197008|44564008|449618007|450316000|45291000168107|45534005|46040000|46206005|473008002|47401000168109|48661000|49563000|49601007|4969004|50415004|50829006|51590001|52072009|52526003|52754008|54020011000036108|54150009|55222007|55260003|55891002|56018004|56273005|5662003|56925008|571000119103|58901008|59026006|59781000168101|59976005|6020002|609410002|61462000|61777011000036104|6211002|6285003|6389006|63901009|64206003|64379006|64531003|64766004|64779008|6496011000036105|66383009|67015007|67362008|68172002|68449006|69215007|69322001|69821011000036104|69867011000036102|699262001|699302001|699368004|699376002|70270011000036104|70323002|70346000|71262003|73442001|7393007|74732009|7501002|75183008|75408008|76376003|77426011000036108|77442011000036106|77981007|79012001|79015004|79395009|7973008|8009008|80515008|80585000|80954004|80967001|81308009|82297005|82470000|82639001|82883008|83156004|83225011000036106|83901003|84114007|84480002|85828009|85898001|86094006|89419008|90128006|90834002|923927011000036105|93478000|95319004|95320005|95453001|95570007|95655001|95673003|95677002|9829001|102572006|102598000|102617004|102897001|105504002|11072008|111516008|122481008|124055002|128239009|134407002|161903000|162221009|165509000|166584001|17369002|17971005|18101008|18165001|202472008|202852009|21005005|21238011000036103|21290011000036100|21296011000036107|21322011000036108|21486011000036105|21659011000036107|225549006|225581002|225601007|228148009|2297011000036108|233604007|23502006|239965002|246676003|248262001|249898006|249902000|249914008|249917001|249918006|249940002|2531000168109|26171000168109|262558009|26413003|266257000|266599000|266601003|267038008|267045008|267079009|267950000|271137009|271713000|271737000|271787007|271834000|271835004|27355003|274667000|2764000|279069000|284143002|284151004|284262007|285395009|285849008|286369003|286381004|286755001|287045000|28743005|288332005|288335007|29164008|2929011000036108|299954009|300381009|300955002|304534000|307496006|30811009|309249007|310495003|31384009|31681005|32970011000036103|33308003|34839011000036106|3545003|35678005|35918011000036106|36630001|367466007|370143000|371081002|371632003|373932008|39621005|397803000|399269003|40095003|40196000|40806005|40930008|415749005|41652007|418648005|419076005|420103007|421262002|4230011000036107|424196004|4249000|426965005|427475007|429340002|429513001|43005009|44186003|4422011000036109|444899003|445178008|44548000|449614009|45979003|46991000|473011001|52448006|56317004|59927004|60728008|609599003|61387006|61599003|67233009|68235000|70076002|70153002|75088002|76000011000036107|77422011000036109|77547008|78584011000036106|78860006|81498004|81680008|82272006|83421005|84946008|91019004|95359001|101000119102|102498003|102943000|103002009|10743008|118932009|12584003|129103003|130989002|13746004|1402001|14151009|161898004|162116003|16269008|165232002|166848004|167232003|18193002|202482009|202855006|21134002|21252011000036100|21286011000036106|21520011000036107|21606011000036107|21662011000036107|21821011000036104|22325002|224962007|225610004|22631008|236423003|237130006|238131007|239720000|247464001|247472004|248132003|249472009|249489001|26237000|26889001|271767006|271801002|274676007|275921007|277223000|279084009|280816001|282180007|299037003|299322007|301679006|30473006|308925008|309557009|310501001|315224006|3210011000036104|3253007|32643011000036106|32798002|34095006|3572011000036102|361137007|36971009|371405004|397540003|4138011000036106|417237009|424647005|429040005|42984000|43498006|445445006|44695005|448589005|46635009|4740000|48926009|52702003|53741008|55350005|609600000|61372001|6205011000036102|6206011000036109|64226004|67251005|68566005|69813011000036107|698247007|7006003|7011001|80182007|82423001|8392000|90446007|95418008|95421005|95847005|116289008|11654001|12063002|125667009|161874006|162043005|21433011000036107|21719011000036107|225014007|23056005|236620008|247441003|247753000|248236005|249915009|249938007|258155009|267064002|26929004|271870002|275319005|281016006|281245003|284140004|287047008|288227007|288885009|299042006|299060006|309087008|309536001|314109004|32398004|373931001|39400004|396275006|397825006|399114005|399122003|40733004|418092006|428061005|43116000|432352001|444827008|48532005|50219008|53430007|53523011000036100|54586004|56731001|57406009|59050008|6471006|72405004|73589001|75694006|76742009|82971005|83547004|87486003|9126005|193093009|202480001|21343011000036103|21545007|24199005|247323005|247347003|248491001|267949000|267953003|271594007|274279008|274663001|282195009|297217002|298753001|301202006|3298011000036103|363346000|36955009|386806002|405729008|419145002|419581008|47004009|47268002|55145008|70733008|77461011000036109|80690008|84017003|85418005|102480002|162352007|165247006|18876004|195967001|197321007|21496011000036106|21779011000036103|248096004|249913002|250082003|262286000|271832001|278528006|279038004|288230000|309538000|309539008|3530011000036104|3559011000036109|420038007|4216011000036104|426899007|4344011000036106|44054006|52613005|56608008|62476001|86651002|8708008|89362005|162290004|162397003|166892002|213257006|21565011000036108|225624000|23924001|248277009|250069006|267039000|288228002|300306001|3424008|398032003|43724002|449918009|57182000|8510008|16046003|202882003|203095000|225609009|240131006|267044007|288226003|288939007|289195008|29542008|3080011000036109|309086004|309537005|310497006|34436003|36349006|386661006|39575007|415690000|42399005|69791001|90708001|161873000|16386004|16973004|214264003|238810007|297142003|301676004|38341003|429783005|48500005|53215011000036102|53458011000036102|6142004|69896004|77436011000036106|84445001|128139000|16331000|166717003|230145002|249966004|2733002|282299006|386692008|418363000|425423002|49727002|55533009|73595000|79890006|87715008|90560007|931804011000036107|161882006|166643006|200936003|21288011000036105|26329005|285365001|286641001|289903006|309521004|32914008|36031001|39104002|431416001|77692006|162031009|21885011000036105|24184005|4171011000036100|49049000|78514002|9991008|102551008|230690007|24700007|247640008|267032009|302226006|34840004|80313002|166830008|21242011000036102|250084002|271782001|37796009|386033004|426206001|67849003|698065002|74323005|21417011000036105|235856003|40917007|45352006|53057004|86044005|18963009|277521002|367391008|60862001|65124004|21930011000036101|73211009|24693007|288231001|387603000|422400008|60238002|247373008|26079004|60119000|267052005|289530006|4031011000036106|55929007|267031002|267036007|56265001|8357008|8943002|124054003|248255005|386705008|418290006|54981004|77435011000036104|21522001|248274002|60032008|63102001|90673000|131148009|300954003|301345002|102556003|271587009|282145008|399153001|44077006|162059005|271807003|28551000168108|80449002|95891005|51197009|29857009|3848011000036104|247592009|129565002|248490000|14760008|279039007|48694002|246636008|386807006|82991003|224960004|419723007|88092000|77424011000036100|22298006|278040002|3904011000036106|81680005|3723001|309774006|47933007|271681002|45326000|3384011000036100|30989003|422587007|228158008|404640003|49218002|193462001|48167000|26544005|449917004|62507009|62315008|10601006|161891005|13791008|3877011000036101|25064002|162076009|35489007|57676002|55300003|84229001|76948002|68962001|22253000" $searchFile | egrep "SNOMEDCT_US\|FN\|"  > $resultFile


##
less consoGrep.txt | egrep "(finding)|\(disorder)" > consoNum.txt
