import 'package:dev_utils/src/features/zipcode/brazilian_zip_code.dart';
import 'package:dev_utils/src/interfaces/i_zip_code.dart';
import 'package:test/test.dart';

void main() {
  //
  final IZipCode zipcode = BrazilianZipCode();

  final Map<String,dynamic> responseModel = {
          'cep': '01001-000',
            'logradouro': 'Praça da Sé',
            'complemento': 'lado ímpar',
            'bairro': 'Sé',
            'localidade': 'São Paulo',
            'uf': 'SP',
            'ibge': '3550308',
            'gia': '1004',
            'ddd': '11',
            'siafi': '7107'
        };

  group('Brazilian Zip Code', () {
    
    test('Get a valid zip code', () async {
      
      final address = await zipcode.searchByCode(code: "01001000");

      expect(address, equals(responseModel));
    });

    test('Get an error', () async {
      
      final address = await zipcode.searchByCode(code: "12345678");

      expect(address, equals({"error": true}));
    });
  });
}
