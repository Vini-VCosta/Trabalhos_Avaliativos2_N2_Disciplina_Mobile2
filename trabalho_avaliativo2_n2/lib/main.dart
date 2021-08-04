// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: Inicio(),
  ));
}

//Classe/Tela Inicio, tela que inicia o app
class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: DefaultTabController(
            length: 2,
            child: ListView(
            children: <Widget>[
              //Card para colocar a imagem
              Card(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Image.asset("imagens/capa.jpg"),
                    ],
                  ),),
              ),
              //Tabs responsavel por conter os botões abaixo da imagem, não possuem sua função totalmente
              TabBar(
                tabs: <Widget> [
                  Tab(
                      //Texto e icone (imagem pequena) do botão tab
                      child: Text('Inicio as 20:00 às Sextas-feiras', style: TextStyle(color: Colors.teal)),
                      icon: Icon(Icons.access_alarm, color: Colors.tealAccent)
                  ),
                  Tab(
                    //Texto e icone (imagem pequena) do botão tab
                      child: Text('Local de jogo: Servidor Discord', style: TextStyle(color: Colors.teal)),
                      icon: Icon(Icons.wrong_location, color: Colors.tealAccent)
                  ),],),
              //Lista contendo Icone e texto estilizadas
              ListTile(
                leading: Icon(Icons.format_align_justify, color: Colors.blue),
                title: Text('Lista de regras para participar do nosso grupo de RPG', style: TextStyle(color: Colors.blueAccent)),
              ),
              ListTile(
                leading: Icon(Icons.wc_outlined, color: Colors.deepOrange),
                title: Text('1 Regra: Não julgue os gostos ou fetiches dos players, independente deles todos temos gostos ou fetiches estranhos', style: TextStyle(color: Colors.orangeAccent)),
              ),
              ListTile(
                leading: Icon(Icons.voice_over_off_outlined, color: Colors.teal),
                title: Text('2 Regra: Não agrida os players, independete da razão', style: TextStyle(color: Colors.tealAccent)),
              ),
              ListTile(
                leading: Icon(Icons.add_circle_outline, color: Colors.red),
                title: Text('3 Regra: Não adicione ninguem sem permissão do mestre', style: TextStyle(color: Colors.redAccent)),
              ),
              ListTile(
                leading: Icon(Icons.image, color: Colors.blue),
                title: Text('4 Regra: Não mande nudes, isso é coisa para grupos privados do whats e derivados', style: TextStyle(color: Colors.blueAccent)),
              ),
              ListTile(
                leading: Icon(Icons.edit_road, color: Colors.deepOrange),
                title: Text('5 Regra: Não tenha medo de errar ou perder, todos passamos pelo momento de aprendizado', style: TextStyle(color: Colors.orangeAccent)),
              ),
              ListTile(
                leading: Icon(Icons.insert_emoticon, color: Colors.teal),
                title: Text('6 Regra: Não esqueça de se divertir', style: TextStyle(color: Colors.tealAccent)),
              ),
              //Botão que leva a tela Programação
              ElevatedButton(
                  child: Text('Cronograma das sessões anteriores', style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Programacao()));
                  },
                  //Estilização do botão
                  style: ButtonStyle(
                    backgroundColor :  MaterialStateProperty . all ( Colors.redAccent),
                  ),),
            ],),
        ),);
  }
}

//Classe/Tela Programação, segunda tela do app
class Programacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //Barra do topo dizendo o nome da tela
        appBar: AppBar(title: Text('Sessões anteriores')),
        body: ListView(
         children: <Widget>[
           //Lista com textoe checkbox estilizados
           ListTile(
             //Texto menor a esquerda
             leading:  Text('04/12'),
             //Texto maior no topo da lista (titulo)
             title: Text('Sessão 1'),
             //Texto menor no final da lista (subtitulo)
             subtitle: Text('Puro osso: o inicio de tudo'),
             //CheckBox
             trailing: MyStatefulWidget(),
           ),
           ListTile(
             leading:  Text('11/12'),
             title: Text('Sessão 2'),
             subtitle: Text('O mostro tá saindo da jaula'),
             trailing: MyStatefulWidget(),
           ),
           ListTile(
             leading:  Text('18/12'),
             title: Text('Sessão 3'),
             subtitle: Text("Turker's Chimera"),
             trailing: MyStatefulWidget(),
           ),
           ListTile(
             leading:  Text('18/12'),
             title: Text('Sessão 4'),
             subtitle: Text('Casos de familia'),
             trailing: MyStatefulWidget(),
           ),
           ListTile(
             leading:  Text('08/01'),
             title: Text('Sessão 5'),
             subtitle: Text('Tô só o pó'),
             trailing: MyStatefulWidget(),
           ),
           ListTile(
             leading:  Text('15/01'),
             title: Text('Sessão 6'),
             subtitle: Text('Golpe baixo divino'),
             trailing: MyStatefulWidget(),
           ),
           ListTile(
             leading:  Text('22/01'),
             title: Text('Sessão 7'),
             subtitle: Text('BIIIRLL!!!!'),
             trailing: MyStatefulWidget(),
           ),
           ListTile(
             leading:  Text('29/01'),
             title: Text('Sessão 8'),
             subtitle: Text('Fazendinha feliz'),
             trailing: MyStatefulWidget(),
           ),
           ListTile(
             leading:  Text('05/02'),
             title: Text('Sessão 9'),
             subtitle: Text('Karai, bateu uma onda forte'),
             trailing: MyStatefulWidget(),
           ),
           ListTile(
             leading:  Text('12/02'),
             title: Text('Sessão 10'),
             subtitle: Text('Onde é que eu tô? Sera que estou em lagoinha?'),
             trailing: MyStatefulWidget(),
           ),
           //Botão que leva a classe/tela anterior (Classe Inicio)
           ElevatedButton(
               child: Text("Voltar", style: TextStyle(color: Colors.white)),
               onPressed: () {
                 Navigator.pop(context);
                },
                //Estilização do botão
                style: ButtonStyle(
                  backgroundColor :  MaterialStateProperty . all (Colors.blue)
                ),)
         ]),);
  }
}

//Classes adicionadas com a função de clicagem do checkBox
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }
    return Checkbox(
      shape: CircleBorder(),
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}








