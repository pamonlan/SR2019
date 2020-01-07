#!/usr/bin/bash
gatk='/path/to/gatk --java-options -Xmx60g'
dbsnp='/path/to/dbsnp_138.hg19.vcf.gz'
Mills='/path/to/Mills_and_1000G_gold_standard.indels.hg19.sites.vcf.gz'
ref='/path/to/hg19.fa'
bed='/path/to/ex_region.sort.bed'
cd $1
bam=$2
recaltable=$3
bqsrbam=$4
##the first step of BQSR, generate a recalibrating table
time $gatk BaseRecalibrator \
-I $bam \
-L $bed \
--known-sites $dbsnp \
--known-sites $Mills \
-R $ref \
-O $recaltable

