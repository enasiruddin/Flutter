import 'country_model.dart';

List <CountryModel> GetCountryInfo(){
  List <CountryModel> list = <CountryModel>[];

  CountryModel countryModelData = CountryModel();
  countryModelData.name = "Afghanistan";
  countryModelData.capital= 'Kabul';
  countryModelData.currency= 'Afgan Afgani(AFN)';
  countryModelData.language= 'Dari, Pastho';
  countryModelData.continent='Asia';
  countryModelData.calling_code='+93';
  list.add(countryModelData);

  countryModelData = CountryModel();
  countryModelData.name = "Armenia";
  countryModelData.capital= 'Yerevan';
  countryModelData.currency= 'Armenian dram(AMD)';
  countryModelData.language= 'Armenan';
  countryModelData.continent='Asia';
  countryModelData.calling_code='+374';
  list.add(countryModelData);

  countryModelData = CountryModel();
  countryModelData.name = "Azerbaijan";
  countryModelData.capital= 'Baku';
  countryModelData.currency= 'Azerbaijani manat(AZN)';
  countryModelData.language= 'Azerbaijani';
  countryModelData.continent='Asia';
  countryModelData.calling_code='+994';
  list.add(countryModelData);

  countryModelData = CountryModel();
  countryModelData.name = "Bahrain";
  countryModelData.capital= 'Manama';
  countryModelData.currency= 'Bahrani dinar(BHD)';
  countryModelData.language= 'Arabic';
  countryModelData.continent='Asia';
  countryModelData.calling_code='+973';
  list.add(countryModelData);

  countryModelData = CountryModel();
  countryModelData.name = "Bangladesh";
  countryModelData.capital= 'Dhaka';
  countryModelData.currency= 'Bangladeshi taka(BDT)';
  countryModelData.language= 'Bengali';
  countryModelData.continent='Asia';
  countryModelData.calling_code='+880';
  list.add(countryModelData);

  countryModelData = CountryModel();
  countryModelData.name = "Bhutan";
  countryModelData.capital= 'Thimpu';
  countryModelData.currency= 'Bhutanese ngultrum(BTN)';
  countryModelData.language= 'Dzongka, Sharchhopka';
  countryModelData.continent='Asia';
  countryModelData.calling_code='+975';
  list.add(countryModelData);

  countryModelData = CountryModel();
  countryModelData.name = "Brunei";
  countryModelData.capital= 'Bandar Seri Begawan';
  countryModelData.currency= 'Brunei dollar(BND)';
  countryModelData.language= 'Malay, English';
  countryModelData.continent='Asia';
  countryModelData.calling_code='+673';
  list.add(countryModelData);

  countryModelData = CountryModel();
  countryModelData.name = "Cambodia";
  countryModelData.capital= 'Phnom Penh';
  countryModelData.currency= 'Cambodian riel(KHR)';
  countryModelData.language= 'Khmer';
  countryModelData.continent='Asia';
  countryModelData.calling_code='+855';
  list.add(countryModelData);


  return list;
}