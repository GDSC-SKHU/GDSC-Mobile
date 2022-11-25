# GDSC-Mobile-Study - 1.1 (Built-in types, Functions)


# 공부한 내용
> Dart언어는 객체 지향 언어(Object-Oriented-Language)입니다.

## 1. Built-in types
1.1. **Numbers**
> Dart언어는 두 가지의 숫자형을 제공합니다.

	1. Inteager
	2. Double
1.1.1. int
> 정수 데이터 유형을 나타내며 사용 플랫폼에 따라 64bit 이하의 정수 값으로 구성됩니다.

```
int number = 62;
var hexcode = 0xff;
```
1.1.2. double
> 부동 소수점 숫자를 정의합니다. 지수 표현식도 가능합니다.
```
double pie = 3.14;
var vertex = 2.23e3; //==2230
```
1.2. **Strings**
> 문자열 데이터를 나타내며 single 또는 double quotes 지원합니다. 
```
String myName = "yujin Kim";
var yourName = 'eunchong Kim';
```
1.3. **Booleans**
> True 또는 False의 두 가지 값을 사용합니다.

1.3.1. True
```
bool isFalse = True;
var isCold = True;
```
1.3.2. False
```
bool isTrue = False;
var isWarm = False;
```
1.4. **Lists**
> 배열의 역할을 수행합니다. `[]`를 사용합니다. 그리고 순서가 존재합니다.
```
List animals = ["cat", "dog", "chicken", "pig"];
var organization = ['gdsc', 'mobile', 'member'];
```
1.5. **Sets**
> 순서가 지정되지 않은 집합입니다. `{}`를 사용합니다.
```
var names = {'Alice', 'Mike', 'Maria', 'John'};
```
1.6. **Maps**
> `key`와 `value`로 구성합니다. `{}`를 사용합니다. 
```
var minoi = {
	'name': 'Minoi',
	'age': 25,
	'checkId': 3,
}
```
---
## 2. Functions
> Dart 함수는 객체입니다. 따라서 변수나 다른 함수에 인자로 전달이 가능합니다. 또, 클래스의 인스턴스 호출도 가능합니다.

2.1. **main( )**
> 최상위 함수입니다. Dart언어의 특성 상 모든 구조는 이 함수에 존재해야합니다.
```
void main(){...};
```
2.2. **Anonymous Function**
> 함수의 타입을 따로 정의하지 않은 함수를 말합니다. `(){};` 형식으로 사용합니다.
```
var whatIs = (){...};
dynamic whatAre = (){...};
```

2.3. **Lamda Function**
> 익명함수와 유사하지만 사용하는 방법이 다르며, expr syntax를 사용합니다.

2.3.1. expr syntax
> 함수에서 return 키워드를 생략할 수 있습니다. 하지만 return type이 정확해야합니다.
```
String howFeel() => "so"+" cool!";
```

2.4. **Defaults Function**
> 함수를 변수나 다른 함수에 할당합니다.
```
bool isDoorOpened(int doorkey) {...};
var door = isDoorOpened();
```
```
bool isDoorOpened(int doorkey) {...};
bool isDoorLocked(int doorkey) {...};
getDoorState(isDoorOpened(), isDoorLocked()) {...};
```
2.5. **Parameters**
> 함수를 호출할 때 인수로 전달된 값을 내부에서 사용할 수 있게 해주는 변수를 의미합니다. 매개변수라고 부릅니다.

2.5.1. named optional parameter
> 함수 호출 시 매개변수 이름을 통해 값을 전달합니다. `{}`를 사용합니다. 여러 개 지정도 가능합니다.
```
getFeatures(int weight, int length, {String case}) {...};
getFeatures(50, 125, case: "carp");
```
2.5.2. positional optional parameter
> 위치 선택적 매개변수는 필수적인 매개변수 이후에 선언이 가능합니다. 값을 전달하지 않아도 기본으로 지정한 값이 전달됩니다. `[]`를 사용합니다.
```
getFeatures(int weight, int length, String case, [int width=20]) {...};
getFeatures(50, 125, "carp");
```

2.5.3. required parameter
> 필수적인 매개변수에 대해서 @required annotaion을 사용합니다. 사용하기 위해 meta package를 import 합니다.
```
const Door({@required doorKey});  
```
# 어려웠던 부분
> 자료형은 딱히 어렵지 않고 직관적인 개념이라 이해할만 했다. 그리고 파이썬 언어의 자료형과 비슷해서 낯설게 느껴지지 않았다.
> 함수가 dart에 어떻게 쓰이는 건지 봐도 모르겠다. 함수를 설명할 때 쓰이느 개념도 이해하기 어려웠다. 직접 함수를 써보지 않으면 설명이 이해되지 않을 것 같다.

# 궁금한 부분
> 함수의 타입을 따로 정의하지 않았는데 어떻게 쓰이는 건지 궁금하다.
> 왜 dart를 쓰는 건지 궁금하다. 
> 공부한 내용을 x code 로 정리하는 이유

# 스터디 리뷰
> 스스로 공부해서 정리하니까 이해가 잘 되었다. 
> 계속 스터디하고 모아서 정리하면 나중에 쓸 때 유용할 것 같다. 
> 짝과 함께 하니까 혼자 하는 것보단 수월한 것 같다.



	
