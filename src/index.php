<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
  <div class="container">
    <?php
    //Написать функцию, которая будет формировать аббревиатуру заданного выражения.
    // Например Донбасская государственная машиностроительная академия – ДГМА*/
  //  $input = 'Донбасская государственная машиностроительная академия';
  function convert($str) {
      $strNew = str_replace(' ', '', mb_convert_case($str, MB_CASE_TITLE, 'UTF-8'));
      echo preg_replace('![a-z|а-я]!u','',$strNew);
  }
  convert('Донбасская государственная машиностроительная академия');
    ?>
  </div>
  <div class="container">
    <?php
    /*Напишите функцию truncate_string($str, $maxsymbol), которая проверяет длину строки $str, и если она превосходит $maxsymbol – заменяет конец $str на "...", так чтобы ее длина стала равна $maxsymbol*/
    function truncate_string($str, $maxsymbol){
        if(strlen($str) > $maxsymbol){
            return $str = substr_replace($str,"...",$maxsymbol);
        }else
            return $str;
    }
    echo truncate_string('Vbhhhhhffff', 10);
    ?>
  </div>

<div class="container">
  <?php
/* Необходимо написать функцию, которая считает в заданной строке количество заданного символа. Например, getCountSymbol('телефон', 'е');//результат выполнения – 2
*/
function getCountSymbol($string,$symbol){
    $string = mb_strtolower($string);
    $symbol = mb_strtolower($symbol);
    return substr_count($string, $symbol);
}
echo getCountSymbol('телефон', 'е');
?>
</div>
<div class = "container">
  <?php
  /* 4)	Необходимо написать функцию, которая будет обрабатывать строку из формы, а именно функция должна выполнять следующее:
  -удалить концевые пробелы;
  -удалить все html теги
  -спец символы преобразовать в html сущности
  Функция должна вернуть обработанную строку.*/
//  $trimmed = rtrim($name);//удаление концевыйх пробелов
  //$content = strip_tags($name);//удалить все html теги
  //$new = htmlspecialchars("<p>Ваше имя: <input type="text" name="name" /></p>", ENT_QUOTES);
//}




  ?>
  <form action="action.php" method="post">
   <p>Ваше имя: <input type="text" name="name" /></p>
   <p><input type="submit" /></p>
  </form>



</div>

<div class="container">
  <?php
/* 5)	Необходимо написать функцию, которая сокращает полное ФИО в краткое, например getShortFio ('Иванов Иван Ивановчи')
//результат Иванов И.И.*/

function getShortFio($fullFio)
{
  $arr_string = explode(" ", $fullFio);
  list($f, $i, $o) = explode(" ", $fullFio);
  $i = substr_replace($i,".",2);
  $o = substr_replace($o,".",2);
  return $f.' '.$i.' '.$o;
}
echo getShortFio('Иванов Иван Ивановчи');
?>
</div>





<div class="container">
  <?php
  /*Необходимо в заданном имени файла выделить расширение файла (без точки)*/
function getTypeFile($faileName){
  return substr(strrchr($faileName, '.'), 1);
}
echo getTypeFile('file.php');

   ?>
</div>



</body>
</html>
