<?php
$unit['s_n'] = $trad_var['bed'];
$unit['p_n'] = $trad_var['beds'];
$unit['gender'] = $trad_var['bed_gender'];
$unit['special'] = 0;
$car_spec = explode(",",$trad_var['special_characters']);
for ($num1 = 0 ; $num1 < count($car_spec) ; $num1++) if (substr($unit['p_n'],0,strlen($car_spec[$num1])) == $car_spec[$num1]) $unit['special'] = 1;
?>