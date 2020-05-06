#Results: mix_Resnet50_UNet while running on acc_het_1 has 34.73x more EDP using shi dataflow than using dla dataflow. 
#> results.log
#For whole
logfile="whole/mix_Resnet50_UNet_dla_acc_whole.log"
runtime=` grep "Runtime"  $logfile | awk '{print $2}' | awk 'NR % 2 == 0' | paste -sd+ - | bc `
energy=` grep "Total energy consumption" $logfile | awk '{print ($4*1e-8)}' | paste -sd+ - | bc `
perf_per_energy=` grep "Performance per MAC energy" $logfile | awk '{print ($5*1e8)}' | paste -sd+ - | bc `
EDP=`echo "( $runtime * $energy / (1000000000) )" | bc -l`
echo $EDP", "$perf_per_energy >> results.log

logfile="whole/mix_Resnet50_UNet_shi_acc_whole.log"
runtime=` grep "Runtime"  $logfile | awk '{print $2}' | paste -sd+ - | bc `
energy=` grep "Total energy consumption" $logfile | awk '{print ($4*1e-8)}' | paste -sd+ - | bc `
perf_per_energy=` grep "Performance per MAC energy" $logfile | awk '{print ($5*1e8)}' | paste -sd+ - | bc `
EDP=`echo "( $runtime * $energy / (2*1000000000) )" | bc -l`
echo $EDP", "$perf_per_energy >> results.log


#For Configs C_i_
logfile1="mix_Resnet50_UNet_DeepFilters_acc_sa1.log"
logfile2="mix_Resnet50_UNet_ShallowFilters_acc_sa2.log"
runtime1=` grep "Runtime"  $logfile1 | awk '{print $2}' | awk 'NR % 2 == 0' | paste -sd+ - | bc `
runtime2=` grep "Runtime"  $logfile2 | awk '{print $2}' | awk 'NR % 2 == 0' | paste -sd+ - | bc `
max_runtime=$(( runtime1 > runtime2 ? runtime1 : runtime2 ))
energy1=` grep "Total energy consumption" $logfile1 | awk '{print ($4*1e-8)}' | paste -sd+ - | bc `
energy2=` grep "Total energy consumption" $logfile2 | awk '{print ($4*1e-8)}' | paste -sd+ - | bc `
perf_per_energy1=` grep "Performance per MAC energy" $logfile1 | awk '{print ($5*1e8)}' | paste -sd+ - | bc `
perf_per_energy2=` grep "Performance per MAC energy" $logfile2 | awk '{print ($5*1e8)}' | paste -sd+ - | bc `
EDP=`echo "( ( $max_runtime ) * ($energy1 + $energy2) / (1000000000) )" | bc -l`
perf_per_energy=`echo "( ($perf_per_energy1 + $perf_per_energy2) / 2 )" | bc -l`	
echo $EDP", "$perf_per_energy >> results.log


#Calculate per layer EDP
logfile="mix_Resnet50_UNet_dla_acc_whole.log"
grep "Runtime"  $logfile | awk '{print $2}' | awk 'NR % 2 == 0'  > temp_Runtime.tmp
grep "Total energy consumption" $logfile | awk '{print ($4*1e-8)}' > temp_Energy.tmp
paste -d "*" temp_Runtime.tmp temp_Energy.tmp | bc > perlayerEDP_dla.log
rm temp_Energy.tmp temp_Runtime.tmp

