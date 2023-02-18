# Dev Utils

Dev Utils is a package that provides various development utilities to assist with different tasks. It includes tools for generating passwords, creating unique identifiers (IDs), converting decimal numbers to Roman numerals, calculating age, and performing binary search. The package also offers the ability to generate and validate CPF numbers, and to generate CNPJ numbers.

### OBS
> **CPF** stands for "Cadastro de Pessoa Física," which translates to "Individual Taxpayer Registry." It is a unique identification number issued to individuals in Brazil, used for tax purposes, and for accessing various government services. The CPF is composed of 11 digits and is required for many transactions in Brazil, such as opening a bank account or purchasing a property.

> **CNPJ** stands for "Cadastro Nacional da Pessoa Jurídica," which translates to "National Registry of Legal Entities." It is a unique identification number issued to companies and other legal entities in Brazil, used for tax purposes and to identify the entity in various transactions. The CNPJ is composed of 14 digits and is required for many business transactions in Brazil.

## Usage

### CNPJ Generator

To generate a CNPJ number, use `CNPJController.generate()`. This method will return a `Map` with information about the generated CNPJ, including whether it is valid and the number itself.

Usage:

``` dart
import 'package:dev_utils/dev_utils.dart';

final CNPJController cnpjController = CNPJController();
final cnpj = cnpjController.generate();
  
print(cnpj);
// {isValid: true, isUserGiven: false, number: 88035024821163}

```

### CPF Generator

To generate a CPF number, use `CPFController.generate()`. This method will return a `Map` with information about the generated CPF, including whether it is valid and the number itself.

Usage:

``` dart 
import 'package:dev_utils/dev_utils.dart';

final CPFController cpfController = CPFController();
final cpf = cpfController.generate();

print(cpf);
// {isValid: true, isUserGiven: false, number: 77894295744}
```

### CPF Validator

To validate a CPF number, use `CPFController.validate()`. This method receives a list of integers with 11 digits and returns a `Map` with information about the validity of the CPF, including whether it is valid and the number itself.

Usage:

``` dart
import 'package:dev_utils/dev_utils.dart';

final CPFController cpfController = CPFController();
final cpf = cpfController.validate([7,7,8,9,4,2,9,5,7,4,4]);

print(cpf);
// {isValid: true, isUserGiven: true, number: 77894295744}
```

### Age Calculator

To calculate a person's age, use `AgeController.calculateAge()`. This method receives the date of birth in the format day/month/year and returns the age.

Usage:

``` dart
import 'package:dev_utils/dev_utils.dart';

final AgeController ageController = AgeController();
final age = ageController.calculateAge(day: 1, month: 1, year: 2000);

print(age); // 23
```

### Binary Search

To perform a binary search, use `BinarySearchController.binarySearch()`. This method receives a list of integers and a value to be searched for, and returns a `Map` with information about the search result, including whether the value was found, the index, and the number of attempts.

Usage:

``` dart
import 'package:dev_utils/dev_utils.dart';

final BinarySearchController binarySearchController = BinarySearchController();
final result = binarySearchController.binarySearch([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 7);

print(result)
// {target: 7, result: 7, index: 6, attempts: 4}
```

### Roman

The Roman package generates Roman numerals from a given integer.

Usage:

``` dart
import 'package:dev_utils/dev_utils.dart';

final RomanController  controller = RomanController();
print(controller.convertToRoman(decimal: 3));
// {roman: III, decimal: 3}
```

### Id

The Id package generates unique identifiers of a given length.

Usage:

``` dart

import 'package:dev_utils/dev_utils.dart';

final IdController  controller = IdController();
print(controller.generateID(length: 8)); // 03255660
``` 

### Password

The Password package generates random passwords.

Usage:

``` dart
import 'package:dev_utils/dev_utils.dart';

final PasswordController  controller = PasswordController();
print(controller.generatePassword(length: 16));
// udS-dJf@9RBkh$n1
```

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
