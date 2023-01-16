import 'package:e_commerce/pages/constant.dart';
import 'package:flutter/material.dart';
class Privacy extends StatelessWidget {
  const Privacy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: KDefualtColor,
        ),
        backgroundColor: Color(0xFFEDECF2),
        elevation: 0,
        title: Text('Privacy',
        style: TextStyle(color: KDefualtColor,fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Lorem ipsum dolor sit amet, tempor suscipiantur no per. Te laudem reformidans his. Dolore quaeque urbanitas ius an, mea dico labores deseruisse et. Ea his docendi deleniti prodesset, animal fastidii dissentias ea quo. Eos utinam timeam posidonium no. Eu his case deseruisse adipiscing, in fastidii recusabo vim. Duis consul officiis ex per. Ex has labitur apeirian, est et facilis constituto. Et lorem accommodare eam, mnesarchum scripserit definitiones nec id. Clita libris ex pri, audire qualisque eos no. Ei scripta petentium duo, eu nulla epicuri mea. No pro dicam fuisset pertinax. Usu viris aperiam necessitatibus id, nam et tempor detracto intellegebat, ad stet deleniti philosophia sit. Vel eu malis quaeque nominavi, exerci petentium ei sit. Legere noster cu eum. Ridens alterum legimus at sed, usu ei omnes constituto, ea mea posse splendide expetendis. Mutat aperiam scriptorem duo ut, cum vero adhuc gubergren eu. Sed ut erant mundi disputationi. Usu ut adhuc atomorum. Est te ceteros efficiantur, agam movet an est. At labore dolorum legendos eos, sed ex dolorum vituperatoribus, sit tota vivendum facilisis ei. Iuvaret percipit signiferumque nec no, no brute veritus eam, cum duis nostrud conceptam ne. Nibh facilisi scribentur mei id, autem luptatum erroribus est id. Facer explicari est in. Has accumsan facilisis ut. Persius petentium has ex, an legimus iudicabit est.',
              textAlign: TextAlign.justify,),
          )
        ],
      ),
    );
  }
}