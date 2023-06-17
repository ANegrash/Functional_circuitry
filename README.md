# Функциональная схемотехника
**Автор:** Неграш Андрей, группа P33301

## Лабораторная 1
[**Отчёт**](https://github.com/ANegrash/Functional_circuitry/blob/main/lab1/report.pdf)

**Вариант:** 4

### Часть 1
Разработана [схема вентиля (NAND)](https://github.com/ANegrash/Functional_circuitry/blob/main/lab1/nand.asc), построен [символ](https://github.com/ANegrash/Functional_circuitry/blob/main/lab1/nand.asy) этого вентиля, а также [схема его тестирования](https://github.com/ANegrash/Functional_circuitry/blob/main/lab1/example_nand.asc).

Вся описательная часть со скриншотами находится в отчёте.

На основе созданного базиса NAND построена [схема шифратора](https://github.com/ANegrash/Functional_circuitry/blob/main/lab1/shifrator.asc), нарисован его [символ](https://github.com/ANegrash/Functional_circuitry/blob/main/lab1/shifrator.asy) и [схема для его тестирования](https://github.com/ANegrash/Functional_circuitry/blob/main/lab1/example_shifrator.asc).

### Часть 2
На языке Verilog создано два модуля (можно было сделать и в одном, но мне захотелось поразбираться). 

[Первый модуль](https://github.com/ANegrash/Functional_circuitry/blob/main/lab1/or_by_nand.v) получает на вход 4 сигнала и на выход посылает значение их логического ИЛИ (полностью написан с помощью NAND). К нему прилагается [тестировочный модуль](https://github.com/ANegrash/Functional_circuitry/blob/main/lab1/or_tb.v).

Я значительно упростил себе задачу, так что [второй модуль](https://github.com/ANegrash/Functional_circuitry/blob/main/lab1/shifrator.v), содержащий непосредственно шифратор, выглядит очень коротко. К нему также прилагается его [тестировочный модуль](https://github.com/ANegrash/Functional_circuitry/blob/main/lab1/shifrator_tb.v).

## Лабораторная 2
[**Отчёт**](https://github.com/ANegrash/Functional_circuitry/blob/main/lab2/report.pdf)

**Вариант:** 
| № | Выражение     | Ограничение                |
|---|---------------|----------------------------|
| 7 | $y=a*sqrt(b)$ | 2 сумматора и 2 умножителя |

В [тестовом модуле функции](https://github.com/ANegrash/Functional_circuitry/blob/main/lab2/function_test.v) лежит пример тестирование с перебором всех пар операндов и автопроверкой.

## Лабораторная 3
[**Отчёт**](https://github.com/ANegrash/Functional_circuitry/blob/main/lab3/report.pdf)

**Вариант:** такой же как и в лабораторной работе №2
