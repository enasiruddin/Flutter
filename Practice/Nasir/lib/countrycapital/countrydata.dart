import 'countrymodel.dart';

List <CountryModel>  GetCountryModel(){

  List<CountryModel> list = <CountryModel>[];
  CountryModel countrydata = CountryModel();
  countrydata.name = 'Afganistan';
  countrydata.capital = 'Kabul';
  countrydata.continent = 'Asia';
  list.add(countrydata);

  countrydata = CountryModel();
  countrydata.name = 'Albania';
  countrydata.capital = 'Tirana';
  countrydata.continent = 'Europe';
  list.add(countrydata);
  return list;
}