% Задайте две матрицы A и B размером 5 × 5. 
% Последовательно введите команды, выполняющие логические действия и 
% операции отношения над матрицами, и изучите результаты их выполнения. 
A = rand(5, 5)
B = randn(5, 5)
% > для каждого элемента обеих матриц
A > B;
% == для каждого элемента обеих матриц
A == B;
% ~= для каждого элемента обеих матриц
A ~= B;
% <= для каждого элемента обеих матриц
A <= B;
% визуализация > 0 для каждого элемента матрицы A
spy(A > 0);
% визуализация > 0 для каждого элемента матрицы A
spy(A < 0.1);
% визуализация > 0 для каждого элемента матрицы A
spy(A >= B);