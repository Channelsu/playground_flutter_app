import 'package:playgroundflutterapp/model/hotel.dart';

List<Hotel> hotelList = [
  Hotel(
    id: 1,
    brand: 'hoshinoya',
    name: '星のや軽井沢',
    place: '長野県・軽井沢',
    price: '38,115',
    tagline: '谷の集落に滞在する',
    imageLink:
        'https://www.hoshinoresorts.com/hrcms/wp-content/images/2013/10/aa6bf396cf71ed640fd98ae8e0cf71e8.jpg',
    introduce:
        '軽井沢の森は雄弁だ。道の先々で、彼らは旅人に囁きかける。やわらかな木洩れ日の中、風にのって流れてくる葉の擦れる音。どこからか聞こえてくる鳥のさえずり。草陰に潜む虫の声。絶え間なく、ささやかに耳に届く川のせせらぎ。静まり返った集落は、日が昇るにつれ、豊かな森の声に包まれていく。',
  ),
  Hotel(
    id: 2,
    brand: 'hoshinoya',
    name: '星のや東京',
    place: '東京都・大手町',
    price: '50,193',
    tagline: '世界都市東京によみがえる',
    imageLink:
        'https://www.hoshinoresorts.com/hrcms/wp-content/images/2013/10/fg2205_Thoshi_02_01-31.jpg',
    introduce:
        '東京・大手町。皇居や東京駅にほど近い一角にある日本旅館。お茶の間を中心に設えた小さな宿が塔状に重なり合っている。江戸小紋で包まれた外観はまるで結界を張っているようだ。一枚板の扉を抜けると、香やい草の匂いに包まれる。玄関で履物を預ければ、日本旅館らしいもてなしと安らぎはそのままに、進化した新しい宿での滞在がはじまる。',
  ),
  Hotel(
    id: 3,
    brand: 'hoshinoya',
    name: '星のや富士',
    place: '山梨県・富士河口湖',
    price: '49,995',
    tagline: '明日が分からない、丘陵',
    imageLink:
        'https://www.hoshinoresorts.com/hrcms/wp-content/images/2018/03/9f998229562dbe1d89aae81e37ec8fa5.jpg',
    introduce:
        '河口湖を見晴らす山の斜面で、心赴くままに外遊びを満喫することができる。グランピングという遊びは、些細な自然の変化に気づかせてくれる。火を囲み、森の気配を聞く。体が少しずつ動物としての本能を目覚めさせていく。',
  ),
  Hotel(
    id: 1001,
    brand: 'kai',
    name: '界 加賀',
    place: '石川県・山代温泉',
    price: '16,000',
    tagline: '加賀伝統の温泉宿',
    imageLink:
        'https://www.hoshinoresorts.com/hrcms/wp-content/images/2018/03/6dc82d66815383e8b90e644c43410de1.jpg',
    introduce:
        '加賀水引や加賀友禅をあしらった客室で寛ぎ、「九谷焼の器と料理のマリアージュ」を味わう滞在。館内で迫力の加賀獅子舞を観るなど加賀文化を堪能します。',
  ),
  Hotel(
    id: 1002,
    brand: 'kai',
    name: '界 湯布院',
    place: '大分県・湯布院温泉',
    price: '37,000',
    tagline: '四季折々の棚田',
    imageLink:
        'https://www.hoshinoresorts.com/hrcms/wp-content/images/2022/04/main_yufuin_2880-1822.jpg',
    introduce:
        '由布岳に見守られるように建つ宿は、日本の原風景とも称される棚田をランドスケープとして望みます。稲作の暦を追う風景は四季を映し、心身が緩む滞在となります。',
  ),
  Hotel(
    id: 1003,
    brand: 'kai',
    name: '界 仙石原',
    place: '神奈川県・仙石原温泉',
    price: '46,000',
    tagline: '内なる表現欲と出会う',
    imageLink:
        'https://www.hoshinoresorts.com/hrcms/wp-content/images/2018/04/8b9f019c86281543243551f33dffb9aa.jpg',
    introduce:
        '雄大な自然を望む客室は、全室露天風呂付き。館内を創り上げるアート作品との出会いが内なる表現欲をかき立てます。アート心を持つ仙石原ならではの滞在です。',
  ),
  Hotel(
    id: 2001,
    brand: 'omo',
    name: 'OMO7大阪',
    place: '大阪府・大阪市',
    price: '12,000',
    tagline: 'ほれてまうわ、なにわ',
    imageLink:
        'https://www.hoshinoresorts.com/hrcms/wp-content/images/2021/10/NEW_OMOosakaKV_2880_1822.jpg',
    introduce:
        '船の帆で覆われたようなホテルからは、大阪の街が見え隠れ。木立や芝生が広がるエリアは人々で賑わい、湯屋で寛ぐひとときも。ここは大阪の新天地。定番のおいしいもんは鮮やかな料理に仕立て、千客万来お待ちします。ディープな街・新世界や水の都大阪を知れば実におもろい。知ってるようで知らない、なにわにほれてまうこと間違いなし。',
  ),
  Hotel(
    id: 2002,
    brand: 'omo',
    name: 'OMO7高知',
    place: '高知府・高知市',
    price: '5,273',
    tagline: '歴史と活気を感じる街',
    imageLink:
        'https://www.hoshinoresorts.com/hrcms/wp-content/images/2022/10/b5a24819a2134859ce56ef27cf846ae4.jpg',
    introduce:
        'ホテルのそばから路面電車に乗って、高知の街の旅をスタート！数多くの偉人を輩出したこの街は、歴史と活気が常にあふれています。日本最大級の青空市「日曜市」や地元の方や観光客でにぎわう「ひろめ市場」など、高知ならではの文化に触れる旅はいかがでしょう。',
  ),
  Hotel(
    id: 2003,
    brand: 'omo',
    name: 'OMO5小樽',
    place: '北海道・小樽市',
    price: '5,455',
    tagline: 'ソーラン、目覚めの港町',
    imageLink:
        'https://www.hoshinoresorts.com/hrcms/wp-content/images/2021/10/OMOotaruKV_2880_1822.jpg',
    introduce:
        '文明開化の明治時代の面影が今も遺るレトロな港町、小樽。ニシン漁の勇ましい掛け声が聞こえてきそうな朝の町歩きは心地よい活気が漂います。モダンなダイニングでニシン料理のスペシャリテを味わえば、港町の景色が少し違って見えてくる。小樽に泊まる新たな旅のはじまりです。',
  ),
  Hotel(
    id: 3001,
    brand: 'beb',
    name: 'BEB5軽井沢',
    place: '長野県・軽井沢',
    price: '7,433',
    tagline: '時間を気にせずルーズに',
    imageLink:
        'https://www.hoshinoresorts.com/hrcms/wp-content/images/2020/10/6050_1822_1E2A7984-2.jpg',
    introduce:
        'BEBは居酒屋以上、旅未満のルーズなホテル😊カフェラウンジは持ち込みOK👌で24時間オープンしているし、チェックアウトもお昼ごろ😴客室は秘密基地みたいに遊び心たっぷりでぼくたちらしい時間を約束してくれる。軽井沢で最もアツい星野エリアの入り口にあるのも嬉しい😆🎉💯',
  ),
  Hotel(
    id: 3002,
    brand: 'beb',
    name: 'BEB5土浦',
    place: '茨城県・土浦',
    price: '5,400',
    tagline: '自転車好きも嬉しい駅ウエ',
    imageLink:
        'https://www.hoshinoresorts.com/hrcms/wp-content/images/2019/10/Yikin-HYO-IZY_0346-top.jpg',
    introduce:
        '居酒屋以上、旅未満のルーズなホテルはみんな嬉しい駅ウエ😊インダストリアルなカフェラウンジは持ち込みOK👌で24時間オープンしているし、チェックアウトもお昼ごろ😴壁の大きなスクリーンには見たことのない自転車競技！🚴‍♀️🚴‍♂️💨大好きな自転車も一緒に泊まれるなんてヤバすぎ😆🎉💯',
  ),
  Hotel(
    id: 10001,
    brand: 'other',
    name: '青森屋',
    place: '青森県・三沢',
    price: '8,195',
    tagline: 'ハネトが舞い、祭り気分最高',
    imageLink:
        'https://www.hoshinoresorts.com/hrcms/wp-content/images/2018/03/bb2941b3025267abc537ce36534097c0.jpg',
    introduce:
        '青森屋が創り上げるのは、青森の原風景。馬と密接に暮らしてきた青森らしく、古民家の並ぶ小径には馬車が巡り、随所に、歴史ある祭りの熱気や雪国の暮らしが紡いできた伝統工芸が散りばめられています。温和で照れ屋な青森人のもてなしで、どこか懐かしい別世界をご体感ください。',
  ),
  Hotel(
    id: 10002,
    brand: 'other',
    name: '奥入瀬渓流ホテル',
    place: '青森県・十和田',
    price: '14,864',
    tagline: '阿修羅の流れが躍動する',
    imageLink:
        'https://www.hoshinoresorts.com/hrcms/wp-content/images/2013/10/37f245062fa21a91ab58b0be400d9251.jpg',
    introduce:
        'ここは、奥入瀬渓流の畔に建つ唯一のリゾートホテル。十和田八幡平国立公園に属す奥入瀬渓流には、清流と苔むした岩、落葉広葉樹の森が広がります。瑞々しい新緑、錦秋の森、雪と氷の世界。その景観は、特別名勝、天然記念物にも指定されるほど。渓流とともに目覚める休日をお過ごしください。',
  ),
  Hotel(
    id: 10003,
    brand: 'other',
    name: '西表島ホテル',
    place: '沖縄県・西表島',
    price: '12,364',
    tagline: 'イリオモテヤマネコが棲む',
    imageLink:
        'https://www.hoshinoresorts.com/hrcms/wp-content/images/2019/08/e9a8e225bab88e46ac078ccd36ff818c.jpg',
    introduce:
        'ジャングルが90％を覆う奇跡の島。亜熱帯性気候が育む独自の生態系は、イリオモテヤマネコをはじめ、驚きと発見にあふれています。自然と共生し、希少な野生生物とともに暮らす島での体験は、旅に新たな豊かさをもたらします。',
  ),
];
