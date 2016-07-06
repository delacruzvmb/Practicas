set terminal epslatex color dashed standalone

set xlabel "{\\Large Photon Energy (eV)}"


set xtics 0.25 nomirror
set ytics nomirror

#z lenght of layer [Angstroms (la) & meters (lm)]
lb=5.564770163
la=2.944749766
lm=la*1E-10

set zeroaxis lw 1 lt 2 lc 0
#set label "{\\Large C$_{16}$H$_{8}$-alt}"   at  graph 0.8, graph 0.9 


#######   THREE IN ONE PLOT 
set xrange [0.7:1.6]
# set yrange [-6:5]  
#comentario
set key title "Component"

set ylabel "{{\\Large $\\eta^{axy}(\\omega)$} {\\small $[\\times 10^{10}]$ }}"
# set key left bottom
set output "eta-alt.tex"
p   "../res/calEta2.kk_xxy_yxy_zxy_14452_1_65-nospin2_scissor_0_Nc_41" u 1:($2/1E+10) w l ls 1 dt 1 lw 2 title "x",\
    "../res/calEta2.kk_xxy_yxy_zxy_14452_1_65-nospin2_scissor_0_Nc_41" u 1:($3/1E+10) w l ls 2 dt 2 lw 3 title "y",\
    "../res/calEta2.kk_xxy_yxy_zxy_14452_1_65-nospin2_scissor_0_Nc_41" u 1:($4/1E+10) w l ls 3 dt 3 lw 4 title "z"  
