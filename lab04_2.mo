model lab04_2
//Параметры осциллятора
//x'' + g* x' + w^2* x = f(t)
//w - частота
//g - затухание
  parameter Real w = sqrt(3.00); // 3; 1.00
  parameter Real g = 1.5; // 1.5; 0.6

  parameter Real x0 = 0.8;
  parameter Real y0 = -1;

  Real x(start=x0);
  Real y(start=y0);

//правая часть уравнения f(t)
  function f
    input Real t;
    output Real res;
  algorithm
    res := 0; //1 и 2 случай
    //res := cos(1.5*t); // 3 случай
  end f;
  
  equation
    der(x) = y;
    der(y) = -w*w*x - g*y - f(time);
end lab04_2;
