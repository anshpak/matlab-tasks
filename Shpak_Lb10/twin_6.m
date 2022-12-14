function res = twin_6(h)
% Задание 6. Напишите самостоятельно формулу для кубической интерполяции с четырьмя
% точками. Напишите программу (m-сценарий), в которой пользователь при помощи мыши
% интерактивно задает четыре точки A, B, C, D, затем выполняется кубическая интерполяция и
% движение точки по кривой от точки A до точки D.
clf
axis([-1 1 -1 1])
title('Enter 3 points')
hold on

A = ginput(1);
plot(A(1), A(2), '.b', 'MarkerSize', 25)
text(A(1), A(2) + .1, 'A', 'Color', 'y', 'FontWeight', 'bold');

B = ginput(1);
plot(B(1), B(2), '.r', 'MarkerSize', 25)
text(B(1), B(2) + .1, 'B', 'Color', 'y', 'FontWeight', 'bold');

C = ginput(1);
plot(C(1), C(2), '.m', 'MarkerSize', 25)
text(C(1), C(2) + .1, 'C', 'Color', 'y', 'FontWeight', 'bold');

D = ginput(1);
plot(D(1), D(2), '.c', 'MarkerSize', 25)
text(D(1), D(2) + .1, 'D', 'Color', 'y', 'FontWeight', 'bold');

plot([A(1), B(1), C(1), D(1)], [A(2), B(2), C(2), D(2)], 'g')

t = 0 : h : 1;
S = (1 - t).^3 .* A(1) + 3 .* (1 - t).^2 .* t .* B(1) + 3 .* (1 - t) .* t.^2 .* C(1) + t.^3 .* D(1);
S(2, :) = (1 - t).^3 .* A(2) + 3 .* (1 - t).^2 .* t .* B(2) + 3 .* (1 - t) .* t.^2 .* C(2) + t.^3 .* D(2);
plot(S(1, :), S(2, :), 'g', 'MarkerSize', 25)
% S - массив в две строки
for n = 1:size(S, 2)
    h = plot(S(1, n), S(2, n), '.g', 'MarkerSize', 25);
    axis([-1 1 -1 1])
    drawnow
    pause(.03)
    if(n ~= 1) || (n ~= size(S, 2))
        set(h, 'Visible', 'Off')
        clear h
    end
end

end



