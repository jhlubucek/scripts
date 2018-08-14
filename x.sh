#/bin/bash
x=$1;

#x=$(echo $x | sed 's///g')
x=$(echo $x | sed 's/\$//g')
x=$(echo $x | sed 's/F3/Živnosť/g')
x=$(echo $x | sed 's/F5/yes/g')
x=$(echo $x | sed 's/D3/$p[\"life_insurance_typ_prijmu\"]/g')
x=$(echo $x | sed 's/D4/$p[\"life_insurance_age\"]/g')
x=$(echo $x | sed 's/D5/$p[\"life_insurance_children\"]/g')
x=$(echo $x | sed 's/D6/$p[\"life_insurance_vyska_uverov\"]/g')
x=$(echo $x | sed 's/D7/$p[\"life_insurance_prijem\"]/g')
x=$(echo $x | sed 's/M3/$coefficients[\"life_insurance_price_coef_TPP\"]/g')
x=$(echo $x | sed 's/M4/$coefficients[\"life_insurance_price_coef_SZCO\"]/g')
x=$(echo $x | sed 's/M5/$coefficients[\"life_insurance_age_coef\"]/g')
x=$(echo $x | sed 's/M6/$coefficients[\"life_insurance_age_death_coef\"]/g')
x=$(echo $x | sed 's/M7/$coefficients[\"life_insurance_loan_coef\"]/g')
x=$(echo $x | sed 's/M8/$coefficients[\"life_insurance_fix_coef\"]/g')
x=$(echo $x | sed 's/L3/$coefficients[\"life_insurance_price_coef_TPP\"]/g')
x=$(echo $x | sed 's/L4/$coefficients[\"life_insurance_price_coef_SZCO\"]/g')
x=$(echo $x | sed 's/L5/$coefficients[\"life_insurance_age_coef\"]/g')
x=$(echo $x | sed 's/L6/$coefficients[\"life_insurance_age_death_coef\"]/g')
x=$(echo $x | sed 's/L7/$coefficients[\"life_insurance_loan_coef\"]/g')
x=$(echo $x | sed 's/L8/$coefficients[\"life_insurance_fix_coef\"]/g')

echo $x;
