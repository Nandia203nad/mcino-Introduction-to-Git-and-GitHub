#!/bin/bash
# This script calculates simple interest given principal, annual rate of interest and time period in years.
# Do not use this in production. Sample purpose only.

# Author: Upkar Lidder (IBM)
# Addtional Authors:
# <your Github username>

# Input:
# p, principal amount
# t, time period in years
# r, annual rate of interest

# Output:
# simple interest = p*t*r

echo "Enter the principal:"
read p
echo "Enter rate of interest per year:"
read r
echo "Enter time period in years:"
read t

s=$(expr $p \* $t \* $r / 100)
echo "The simple interest is: "
echo $s
#!/bin/bash
# Энэхүү ск립т нь энгийн хүүг бодож гаргана.
# Зохиогч: Таны нэр
# Формула: SI = (P * R * T) / 100

echo "--- Энгийн хүү бодогч програм ---"

# Хэрэглэгчээс утгуудыг авах
read -p "Үндсэн хөрөнгө (Principal): " p
read -p "Жилийн хүүгийн хувь (Rate of interest %): " r
read -p "Хугацаа /жилээр/ (Time period in years): " t

# Энгийн хүүг бодох (SI)
# Bash нь бутархай тоо шууд боддоггүй тул 'bc' ашиглав
interest=$(echo "scale=2; ($p * $r * $t) / 100" | bc)
total=$(echo "scale=2; $p + $interest" | bc)

echo "---------------------------------"
echo "Бодогдсон хүү (Simple Interest): $interest"
echo "Нийт дүн (Эх үүсвэр + Хүү): $total"
