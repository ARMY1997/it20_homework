<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
    <?php
    /*
    Написать функцию pluck(), которая принимает массив ассоциативных массивов первым параметром, а вторым
найменование ключа. На выходе мы должны получить массив значений данного ключа из каждого подмассива. Например:*/
$users = [
[
  'id' => 1,
  'name' => 'abcd1',
],
[
  'id' => 2,
  'name' => 'abcd2',
],
];
function pluck($users){
foreach ($users as $key => $value) {
    foreach ($value as $k => $v) {
        $arr[$key] = $v;
    }

}
echo '<pre>';
var_dump($arr);
echo '</pre>';

}
echo pluck($users);
/*Дан массив с элементами 26, 17, 136, 12, 79, 15. С помощью цикла foreach найдите сумму квадратов элементов этого массива.*/
        $arr = [26, 17, 136, 12, 79, 15];
        $result = 0;
	       foreach ($arr as $elem) {
		         $result += pow($elem, 2);
	          }
	           echo $result;
/* Создать массив и наполнить его через цикл следующим рядом чисел 1+4+7+10+...+112*/
foreach (range(1, 112, 3) as $number) {
    echo $number. '+' ;
}

/* Напишите функцию get_order($string), которая отсортирует все слова в заданном предложении $string в алфавитном порядке.
Например get_order(ноты акустика гитара;), функция должна вернуть акустика гитара ноты;

function get_order($arr1){
  $arr1 = explode(' ', $string);
  return implode(' ', sort($arr1));
  //return implode(' ',$arr1);
}
echo get_order('ноты акустика гитара');*/


/*Напишите функцию, которая определяет есть ли в заданном массиве повторяющие элементы, функция должна вернуть true или false*/
$input = ["a" => "green", "red", "b" =>  "blue"];
function array_is_unique($input) {
  if(array_unique($input) == $input){
     return 'true';
  }else
   return 'false';
}
echo array_is_unique($input);

/*С помощью цикла for необходимо создать массив чисел от 5 до 1000 (должен получиться массив на 995 элементов). Полученный массив
необходимо обработать таким образом, чтоб каждый элемент данного массива увеличился в 2 раза. Из второго массива вывести с
помощью echo 5 рандомных значений.
$arr = array();
for ($i = 5; $i < 1000; $i++) {
    $arr[] = $i;
}
foreach ($arr as $value) {
     $value = $value * 2;
   }
   $arr_rand = array_rand($arr,5);
echo ($arr_rand);*/
 ?>
</body>
</html>
