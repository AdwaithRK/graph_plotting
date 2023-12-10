set terminal png size 1600,1600
set output 'decrease_plot_retransmission.png'

set title 'Retransmission at Probability 0.1' font ",18"
set ylabel 'Retransmission' font ",16"
set xlabel 'HT' font ",16"


# Set Y-axis range and increments
set yrange [0:*] 
set ytics auto

# Define the styles for the histogram
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.5  # Adjust the boxwidth for better separation between clusters
set key autotitle columnhead outside

# Set the xtics to display the 'HT' labels correctly
set xtics rotate by -45

# Adjust the legend position
set key left top

# Plot the data
plot 'decrease_data_retransmission.txt' using 2:xtic(1) title 'Without Trust DyXY', \
     '' using 3 title 'Trust Based DyXY', \
     '' using 4 title 'New Trust Based DyXY'

