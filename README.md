# Proof of concept cooking R plotly into multiQC

test_multiqc/R_plotly/script1.R generate fig 1 & 2
test_multiqc/R_plotly/script2.R generate fig 3
test_multiqc/R_plotly/script3.R generate fig 4

Rscript will create figure in form of *_mqc.html

```
mkdir Rplot
Rscript --vanilla Rscript_process1/script1.R
Rscript --vanilla Rscript_process1/script2.R
Rscript --vanilla Rscript_process2/script3.R
```

invoke multiQC with 

```multiqc .```

After generating multiqc report, move multiqc_report.html & the folder to the report folder
```
mkdir ../report/ 
mv multiqc_report.html ../report/
mv multiqc_data ../report/
```

The webpage will now be broken, but the report will be generated. Do a bit of addressing to get it to work.
 
```
cd ../report/
sed 's/\"lib\//\.\.\/Rplot\/lib\//g' multiqc_report.html > temp && mv temp multiqc_report.html
```

