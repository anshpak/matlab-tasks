% Задание 2.33
% Создайте матрицы A размером 5 × 6 и B размером 3 × 2
A = ones(5, 6)
B = [2 3; 4 5; 6 7]
% a) Выделите из матрицы A подматрицу S с 2-й по 4-ю строку и с 3-го 
% по 6-й столбец
S = A(2:4, 3:6);
% b) Замените элементы в матрице A элементами матрицы B, начиная со 
% 2-й строки и 4-го столбца
A(2:4, 4:5) = B
% c)  Создайте матрицу D
D = [A zeros(5, 5); zeros(6, 6) A']