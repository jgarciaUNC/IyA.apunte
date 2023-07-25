#
# graficos para ADF
#
set term postscript enhanced color 'Helvetica' 15
set output 'adf-seniales-antena-cuadro.eps'

set xrange [0:5*pi]
y1(x)=sin(x+pi/10)
y2(x)=sin(x-pi/15)

set nogrid
set xzeroaxis lt -1

set label 1 'y_1' at 1.6,0.7 
set label 2 'y_2' at 2.7,0.7
set label 3 'y_3=y_2-y_1' at 4.2,0.3

plot y1(x) w l lw 2 notitle,\
 y2(x) w l  lw 2 notitle,\
 y2(x)-y1(x) w l  lw 2 notitle

set output 'adf-+seniales-antena-cuadro.eps'

set label 4 'y_4' at 2.0,-0.7
set arrow 4 from 2.4,-0.7 to 3.8,-0.6

y4(x)=sin(x)

plot y1(x) w l lw 2 notitle,\
 y2(x) w l  lw 2 notitle,\
 y2(x)-y1(x) w l  lw 2 notitle,\
 y4(x) w l  lw 2 notitle

set output 'adf-++seniales-antena-cuadro.eps'

y5(x)=sin(x+pi/2)

unset label 3
set label 3 'y_3=y_2-y_1' at 3.2,0.58
unset label 4
unset arrow 4
set label 5 'y_5' at 1.7,-0.7

plot y1(x) w l lw 2 notitle,\
 y2(x) w l  lw 2 notitle,\
 y2(x)-y1(x) w l  lw 2 notitle,\
 y5(x) w l  lw 2 notitle




