import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Blog extends StatefulWidget {
  @override
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Blog',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            letterSpacing: 1,
          ),
        ),
        backgroundColor: Color(0xff95B73C),
        brightness: Brightness.light,
        shadowColor: Color(0xff505254),
        toolbarHeight: 75,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          addAutomaticKeepAlives: true,
          children: <Widget>[
            ListTile(
              leading: ImageIcon(AssetImage('images/B.png'), color: Color(0xffA0B351)),
              title: Text('İKİ UCU KESKİN KILIÇ: MÜKEMMELİYETÇİLİK', style: TextStyle(height: 1.6),),
              subtitle: Text('Ayşegül Çakmak yazdı.', style: TextStyle(fontStyle: FontStyle.italic),),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondRoute()),
              ),
              onLongPress: _launchBlog0,
            ),
            ListTile(
              leading: ImageIcon(AssetImage('images/B.png'), color: Color(0xffA0B351)),
              title: Text('ÇOCUK ŞARKILARINDAN İNSANİ DEĞERLERE', style: TextStyle(height: 1.6),),
              subtitle: Text('Seçil Başaran yazdı.', style: TextStyle(fontStyle: FontStyle.italic),),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondRoute()),
              ),
              onLongPress: _launchBlog0,
            ),
            ListTile(
              leading: ImageIcon(AssetImage('images/B.png'), color: Color(0xffA0B351)),
              title: Text('GÖNÜLLÜLÜK SERÜVENİ', style: TextStyle(height: 1.6),),
              subtitle: Text('Azranur Elif Sucuoğlu yazdı.', style: TextStyle(fontStyle: FontStyle.italic),),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondRoute()),
              ),
              onLongPress: _launchBlog0,
            ),
            ListTile(
              leading: ImageIcon(AssetImage('images/B.png'), color: Color(0xffA0B351)),
              title: Text('ÇOCUKLARIMIZDA SORUMLULUK DUYGUSUNU NASIL OLUŞTURACAĞIZ?', style: TextStyle(height: 1.6),),
              subtitle: Text('Necla Heybeci Yılmaz yazdı.', style: TextStyle(fontStyle: FontStyle.italic),),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondRoute()),
              ),
              onLongPress: _launchBlog0,
            ),
            ListTile(
              leading: ImageIcon(AssetImage('images/B.png'), color: Color(0xffA0B351)),
              title: Text('ÖĞRETMENİN GÖNÜL BAHÇESİ', style: TextStyle(height: 1.6),),
              subtitle: Text('Elif Abbas yazdı.', style: TextStyle(fontStyle: FontStyle.italic),),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondRoute()),
              ),
              onLongPress: _launchBlog0,
            ),
            ListTile(
              leading: ImageIcon(AssetImage('images/B.png'), color: Color(0xffA0B351)),
              title: Text('HAYDİ OYUN OYNAYALIM!', style: TextStyle(height: 1.6),),
              subtitle: Text('İrem Polat yazdı.', style: TextStyle(fontStyle: FontStyle.italic,),),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondRoute()),
              ),
              onLongPress: _launchBlog0,
            ),
          ],
        ),
      ),
    );
  }
}

_launchBlog0() async {
  const url = 'https://bambugep.org/iki-ucu-keskin-kilic-mukemmeliyetcilik/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'İKİ UCU KESKİN KILIÇ: MÜKEMMELİYETÇİLİK',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            letterSpacing: 1,
          ),
        ),
        backgroundColor: Color(0xff95B73C),
        brightness: Brightness.light,
        shadowColor: Color(0xff505254),
        toolbarHeight: 75,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Text(
          'Hayatta yaptığımız işler, geçirdiğimiz deneyimler hep mükemmel ve hatasız mı' +
              ' olmalı? Veya  hep en iyisi mi olmalı? Her zaman yüksek standartlara mı' +
              ' ulaşmalıyız? Eğer bu sorgulamaların eşiğindeyseniz mükemmeliyetçilik' +
              ' kavramına bir göz atalım derim.\n\n' +
          'Mükemmeliyetçilik, kişinin kendisi için aşırı yüksek beklentiler koyması ve ' +
              'bu beklentilere  ulaşma konusunda oldukça endişe duymasıdır. Dolayısıyla ' +
              'bunlarla ilgili kendine aşırı eleştirel  yaklaşması durumunu ifade '+
              'etmektedir. Tabii ki de mükemmeliyetçiliği tek bir tanıma  sıkıştırmak ' +
              'mümkün değildir, ancak genel anlamda mükemmeliyetçilik, kusursuzluğu ' +
              'aramaktır. Elinde olanla yetinmemeyi, hep daha iyisi olmayı hedeflemektir. '+
              'Her ne kadar olumlu bir ifadeymiş gibi görünse de mükemmeliyetçilik, kişiyi '+
              'oyumsuzluğa ve tatminsizliğe sürükleme ihtimalini taşır. Çünkü kişi, potansiyelinin farkında olmadan  beklentilerini hep en yüksekte tutarak ve hep daha iyisini ve mükemmelini hedefleyerek  doyumsuz olacak ve tökezlediği anda ise özsaygısını ve kendine olan güvenini yitirecektir.  Mükemmeliyetçilik, insanı geri tutan bir özelliktir. Hata yapmak ve bu hatalardan ders  çıkarmak yetişkin bir insan olmanın parçasıdır; insanı kariyerinde ve genel olarak ilişkilerinde  daha başarılı kılar. Mükemmeliyetçi insanlar, ne pahasına olursa olsun hata yapmaktan  kaçınarak hedeflerine ulaşmayı kendilerine zorunlu hâle getirirler.\n\n'+
            'Mükemmeliyetçi bir davranış biçimiyle ailelerin çocuklarını büyütmesi çocukların gelişimine olumsuz etki edecektir. Örneğin mükemmeliyetçi anne babaların çocukları, sevilmeyi her zaman koşula bağlı hissettiklerinden dolayı kendilerini hiçbir zaman güvende hissetmezler. Bir işi başaramadıklarında kendilerini değersiz hisseder, buna bağlı olarak çok daha kolay depresif özellikleri sergilerler. Her konuda en iyi ve üstün olmak isterler. Olamadıklarında ise büyük bir hayal kırıklığı yaşarlar. Yaptıkları işlerin, ödevlerin iyi olduğundan bir türlü emin olamazlar. Çevresindekiler iyi olduğunu söylese bile kendi iç sesleri aksini söylediği için hoşnutsuzluk ve doyumsuzluk yaşarlar. Kendilerine özgü becerileri olabileceğini fark edemezler. Sonuçta ise bu ve bu gibi durumlar; çocuklar için yorucu, sıkıcı, mutsuz, bir eğitim hayatı ile birlikte doyumsuz bir iş ve çalkantılı bir aile hayatını da beraberinde getirecektir.\n\n' +
            'Bu sebepten ötürü aileler, çocuklarını oldukları gibi kabul etmeli ve her şeyden önce bir insan  olduğu için değer vermelidirler. Çocuklarına güvenmeli ve inanmalıdırlar. Her koşulda  sevdiklerini, onların küçük kalplerine göstermelidirler. Ayrıca onları hiç kimseyle karşılaştırmamalı; onların keyif aldıkları şeyleri yapmalarını teşvik etmelidirler.\n\n' +
            'Mükemmeliyetçi insanlar ise mükemmeliyetçiliğin getirdiği olumsuz durumlardan kurtulmak  ve korunmak için büyük resmi görmeli ve önemsiz detaylara odaklanmadan hedefleri  doğrultusunda ilerlemelidirler. Ayrıca bu yolda kusursuzluğu hedefleyerek enerjilerini ve  çabalarını israf etmemeli; ellerinden gelenin en iyisini yaparak zamanlarını ve enerjilerini  doğru kullanmalıdırlar.\n\n'+
            'Ayşegül Çakmak',
        ),
      ),
    );
  }
}
