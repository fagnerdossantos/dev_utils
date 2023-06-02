# Dev Utils

Dev Utils is a package that provides a variety of development utilities to assist with different tasks. It includes tools for generating passwords, creating unique identifiers (IDs), converting decimal numbers to Roman numerals, calculating age, and performing binary search. The package also offers additional functionalities such as generating and validating CPF and CNPJ numbers, looking up address information based on a Brazilian postal code (CEP), simulating a fake API call, and checking internet connectivity.

### OBS
> **CPF** stands for "Cadastro de Pessoa Física," which translates to "Individual Taxpayer Registry." It is a unique identification number issued to individuals in Brazil, used for tax purposes, and for accessing various government services. The CPF is composed of 11 digits and is required for many transactions in Brazil, such as opening a bank account or purchasing a property.

> **CNPJ** stands for "Cadastro Nacional da Pessoa Jurídica," which translates to "National Registry of Legal Entities." It is a unique identification number issued to companies and other legal entities in Brazil, used for tax purposes and to identify the entity in various transactions. The CNPJ is composed of 14 digits and is required for many business transactions in Brazil.

## Some usage examples

### CNPJ Generator

To generate a CNPJ number, use `CNPJ.generate()`. This method will return a `CNPJModel` with information about the generated CNPJ, including whether it is valid and the number itself.<br>
You can call `toMap()` or `toString()` methods.

Usage:

``` dart
import 'package:dev_utils/dev_utils.dart';

final CNPJ cnpj = CNPJ();
final CNPJModel validCNPJ = cnpj.generate();
  
print(validCNPJ);

// CNPJModel(number: 88035024821163, isValid: true, isGenerated: true)

```

### CPF Generator

To generate a CPF number, use `CPF.generate()`. This method will return a `Map` with information about the generated CPF, including whether it is valid and the number itself.<br>
You can call `toMap()` or `toString()` methods.


Usage:

``` dart 
import 'package:dev_utils/dev_utils.dart';

final CPF cpf = CPF();
final CPFModel validCPF = cpf.generate();

print(validCPF);
// CPFModel(number: 77894295744, isValid: true, isGenerated: true)';

```

### CPF Validator

To validate a CPF number, use `CPF.validate()`. This method receives a list of integers with 11 digits and returns a `Map` with information about the validity of the CPF, including whether it is valid and the number itself.

Usage:

``` dart
import 'package:dev_utils/dev_utils.dart';

final CPF cpf = CPF();
final CPFModel validCPF = cpf.validate("77894295744");

print(validCPF);
// CPFModel(number: 77894295744, isValid: true, isGenerated: false)';
```

### Age Calculator

To calculate a person's age, use `Age.calculate()`. This method receives the date of birth in the format day/month/year and returns the age.

Usage:

``` dart
import 'package:dev_utils/dev_utils.dart';

final Age ageCalc = Age();
final int age = ageCalc.calculate(day: 1, month: 1, year: 2000);

print(age); // 23
```

### Binary Search

To perform a binary search, use `BinarySearch.search()`. This method receives a list of integers and a value to be searched for, and returns a `Map` with information about the search result, including whether the value was found, the index, and the number of attempts.

Usage:

``` dart
import 'package:dev_utils/dev_utils.dart';

final BinarySearch binarySearch = BinarySearchController();
final result = binarySearch.search([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 7);

print(result)
// {target: 7, result: 7, index: 6, attempts: 4}
```

### Roman

The Roman package generates Roman numerals from a given integer.

Usage:

``` dart
import 'package:dev_utils/dev_utils.dart';

final Roman roman = Roman();
final result = roman.decimalToRoman(decimal: 3);
print(result);
// (III, 3)
```

### Id

The Id package generates unique identifiers of a given length.

Usage:

``` dart

import 'package:dev_utils/dev_utils.dart';

final Id idGen = Id();
final int id = idGen.generateID(length: 8)
print(controller); // 03255660
``` 

### Password

The Password package generates random passwords.

Usage:

``` dart
import 'package:dev_utils/dev_utils.dart';

final Password passwordGen = Password();
final password = passwordGen.generate()
print();
// 9RBkh$n1

// Default values 
```
- length = `8`
- passType = `PasswordType.isMixed`


## Limitations
The CPF and CNPJ generator creates valid numbers, but does not check if they are already in use.
The converter from numbers to Roman numerals only supports numbers up to 3999.
The password generator creates random passwords, but does not check if they meet specific security criteria (such as including uppercase and lowercase letters, numbers, and special characters).

## Contributing

Contributions are welcome and encouraged! Open an issue or submit a pull request with your idea or implementation.

If you would like to contribute to this project, follow these steps:

- Fork the project
- Create a new branch with your feature (git checkout -b my-new-feature)
- Commit your changes (git commit -am 'Add some feature')
- Push to the branch (git push origin my-new-feature)
- Create a new Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/fagnerdossantos/dev_utils/blob/main/LICENSE) file for details.

## Credits
dev_utils is developed and maintained by fagnerdossantos.
