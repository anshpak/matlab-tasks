% Задание 4
% Включите начальные фазы φ1 и φ2 в аргументы косинусов, т.е. cos(ω1 t) 
% замените на cos(ω1 t + φ1) и cos(ω2 t) на cos(ω2 t + φ2).
% Задание коэффициентов
a1 = 1.2; a2 = 1.0;
phi1 = 1.25; phi2 = 1.0;
% Задание значений вектора t
t = 0:0.1:15;
% Задание разных частот w1
w1 = 1.25:0.25:2.0;
w2 = 1.0:0.25:1.75;
% Цикл вывода разных графиков на одном листе
for k = 1:4 
    x = a1 * cos(w2(k) * t + phi1);
    y = a2 * cos(w1(k) * t + phi2);
    % Задание вектора-строки вывода надписей
    s=['w1 / w2 = ' num2str(w1(k))];
    % Вывод разных графиков в разных местах листа (экрана)
    % Оператор subplot задает место на листе, где
    % график будет нарисован последующей командой
    subplot(2, 2, k); plot(x, y); title(s);
end