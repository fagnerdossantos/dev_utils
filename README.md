> obs em desenvolvimento!...
[![wakatime](https://wakatime.com/badge/github/fagnerdossantos/dev_utils.svg)](https://wakatime.com/badge/github/fagnerdossantos/dev_utils)
# dev_utils

dev_utils é um pacote Dart que fornece classes de controladores para gerar e validar números de CPF, gerar números de CNPJ válidos, gerar senhas seguras, gerar IDs únicos e converter números para algarismos romanos.

## Instalação

Para instalar o dev_utils, adicione o seguinte ao seu arquivo `pubspec.yaml`:
``` yaml
dependencies:
  dev_utils:  <última  versão>
```
E então execute `pub get` no terminal.

## Utilização

### Gerando CPF

Para gerar um número de CPF válido, use o seguinte código:

``` dart
import 'package:dev_utils/dev_utils.dart';
void main() {
  CPFController cpfController = CPFController(CPFModel());
  var cpf = cpfController.generate();
  print(cpf); // exibe o número de CPF gerado
}
```

### Validando CPF

Para verificar se um número de CPF é válido, use o seguinte código:

``` dart
import 'package:dev_utils/dev_utils.dart';

void main() {
  CPFController cpfController = CPFController(CPFModel());
  var isValid = cpfController.validate([1,2,3,4,5,6,7,8,9,0,1]);
  print(isValid); // exibe true se o CPF é válido, false caso contrário
}
```

### Gerando CNPJ

Para gerar um número de CNPJ válido, use o seguinte código:

```dart
import 'package:dev_utils/dev_utils.dart';

void main() {
  CNPJController cnpjController = CNPJController(CNPJModel());
  var cnpj = cnpjController.generate();
  print(cnpj); // exibe o número de CNPJ gerado
}
```

### Gerando senha

Para gerar uma senha segura, use o seguinte código:

``` dart 
import 'package:dev_utils/dev_utils.dart';

void main() {
  PasswordController passwordController = PasswordController(PasswordModel());
  var password = passwordController.generatePassword();
  print(password); // exibe uma senha gerada
}
```

### Gerando ID

Para gerar um ID único, use o seguinte código:

``` dart
import 'package:dev_utils/dev_utils.dart';

void main() {
  IdController idController = IdController();
  var id = idController.generateID();
  print(id); // exibe um ID gerado
}
```

### Convertendo para algarismos romanos

Para converter um número para algarismos romanos, use o seguinte código:

``` dart
import 'package:dev_utils/dev_utils.dart';

void main() {
  RomanController romanController = RomanController(RomanModel());
  var roman = romanController.convertToRoman(20);
  print(roman); // exibe "XX"
}
```

O código acima irá criar uma instância de `RomanController` e usá-la para converter o número 20 para seu equivalente em algarismos romanos. Ele imprimirá "XX" na tela.


## Características

-   Gerador de números de CPF válidos
-   Validador de números de CPF
-   Gerador de números de CNPJ válidos
-   Gerador de senhas seguras
-   Gerador de IDs únicos
-   Conversor de números para algarismos romanos

## Limitações

-   O gerador de CPF e CNPJ gera números válidos, mas não verifica se eles já estão em uso
-   O conversor de números para algarismos romanos só suporta números até 3999
-   O gerador de senhas gera senhas aleatórias, mas não verifica se elas atendem a critérios de segurança específicos (como incluir letras maiúsculas, minúsculas, números e caracteres especiais)


## Contribuindo

Se você deseja contribuir para este projeto, siga as seguintes etapas:

-   Faça um fork do projeto
-   Crie uma nova branch com a sua funcionalidade (`git checkout -b my-new-feature`)
-   Commit suas mudanças (`git commit -am 'Add some feature'`)
-   Faça push para a branch (`git push origin my-new-feature`)
-   Crie uma nova Pull Request

## Licença

O dev_utils é distribuído sob a licença MIT. Veja o arquivo [LICENSE](https://github.com/seu-usuario/dev_utils/blob/master/LICENSE) para mais detalhes.

## Créditos

dev_utils é desenvolvido e mantido por `fagnerdossantos`.
