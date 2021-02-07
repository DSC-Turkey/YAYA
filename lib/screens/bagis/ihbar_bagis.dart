import 'package:educationhelper/screens/bagis/bagis.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class IhbarBagis extends StatefulWidget {
  @override
  _IhbarBagisState createState() => _IhbarBagisState();
}

class _IhbarBagisState extends State<IhbarBagis> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        body: Column(
          children: [
            ClipPath(
              clipper: YayaCliper(),
              child: Container(
                height: 135,
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 25,
                    left: 10,
                  ),
                  child: Text(
                    'Çocukların bir çoğu ailesinin maddi sıkıntıları sebebiyle okuyamıyor. Elinizi uzatarak bu çocukların kendini keşfettiği eğitim yıllarını kurtarabilir ve dünyaya yön verebilirsiniz.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 230,
                    bottom: 20,
                  ),
                  child: Text(
                    'İhbar Listesi',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 22,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 350,
                  child: CheckboxListTile(
                    title: const Text('Yunus (Temel İhtiyaçlar)'),
                    value: timeDilation != 2.0,
                    onChanged: (bool value) {
                      setState(() {
                        timeDilation = value ? 3.0 : 2.0;
                      });
                    },
                    secondary: Text(
                      '300₺',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 350,
                  child: CheckboxListTile(
                    title: const Text('Aziz (Kalıcak Ev)'),
                    value: timeDilation != 2.0,
                    onChanged: (bool value) {
                      setState(() {
                        timeDilation = value ? 3.0 : 2.0;
                      });
                    },
                    secondary: Text(
                      '100₺',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 350,
                  child: CheckboxListTile(
                    title: const Text('Yüsra (Kyksı yatmamış)'),
                    value: timeDilation != 2.0,
                    onChanged: (bool value) {
                      setState(() {
                        timeDilation = value ? 3.0 : 2.0;
                      });
                    },
                    secondary: Text(
                      '500₺',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 350,
                  child: CheckboxListTile(
                    title: const Text('Ahmet (Okul İhtiyacı)'),
                    value: timeDilation != 2.0,
                    onChanged: (bool value) {
                      setState(() {
                        timeDilation = value ? 3.0 : 2.0;
                      });
                    },
                    secondary: Text(
                      '150',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                FlatButton(
                    onPressed: () {
                      _yayaDialog();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: 350,
                      height: 60,
                      child: Center(
                          child: Text(
                        'Bağış Yap',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      )),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _yayaDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Bağışınızı onaylıyor musunuz ?'),
          content: Text(
              'Bağışı onayladığınızda kredi kartınızdan otomatik çekim yapılacaktır.'),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: MaterialButton(
                shape: StadiumBorder(),
                minWidth: 100,
                color: Colors.blue,
                child: Text('Evet'),
                onPressed: () {
                  Navigator.of(context).pop();
                  _yaya2Dialog();
                },
              ),
            ),
            MaterialButton(
              shape: StadiumBorder(),
              minWidth: 100,
              color: Colors.blue,
              child: Text('Hayır'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _yaya2Dialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Bağışınız başarıyla tamamlandı'),
          content: Text(
              'Eğitim hakkının önemli olduğu bu günlerde bir çocuğa umut olduğunuz için teşekkür ederiz.'),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: MaterialButton(
                shape: StadiumBorder(),
                minWidth: 100,
                color: Colors.blue,
                child: Text('Tamam'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
