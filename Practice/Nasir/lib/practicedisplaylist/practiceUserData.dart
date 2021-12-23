import 'practiceuser_model.dart';

List <PracticeUser>  GetPracticeUser(){
  List<PracticeUser> list = <PracticeUser>[];
  PracticeUser practiceUser = PracticeUser();
  practiceUser.id='01738439104';
  practiceUser.name='Nasir';
  practiceUser.password='7872';
  list.add(practiceUser);

  practiceUser = PracticeUser();
  practiceUser.id='01738439104';
  practiceUser.name='Nasir';
  practiceUser.password='7872';
  list.add(practiceUser);

  practiceUser = PracticeUser();
  practiceUser.id='01738439104';
  practiceUser.name='Obaydullah';
  practiceUser.password='7872';
  list.add(practiceUser);

  practiceUser = PracticeUser();
  practiceUser.id='01738439104';
  practiceUser.name='Joy';
  practiceUser.password='7872';
  list.add(practiceUser);

  return list;

}