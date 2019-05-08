grep 'A1.2\|A2.2\|B2.2\|B2.3' MRSTY.RRF | cut -f 1 -d '|' | sort -u > /Users/manojgopale/Manoj/NLP/datasets/umls_dataset/a12_a22_b22_b23_context.txt

## sed "s/|/<Ctrl + V> + tab key/g"
join -t "|" -1 1 -2 1 /Users/manojgopale/Manoj/NLP/datasets/umls_dataset/a12_a22_b22_b23_full/a12_a22_b22_b23_context.txt /Users/manojgopale/Manoj/NLP/2018AB-full/UMLS_install/2018AB/META/MRCONSO.RRF | grep "ENG" | cut -d "|" -f1,15 | grep -v '[\[(]' | sort -u | sed "s/|/    /g" > /Users/manojgopale/Manoj/NLP/datasets/umls_dataset/a12_a22_b22_b23_full/a12_a22_b22_b23_train.tsv

grep 'B2.3' MRSTY.RRF | cut -f 1 -d '|' | sort -u > /Users/manojgopale/Manoj/NLP/datasets/umls_dataset/b23_context.txt
join -t "|" -1 1 -2 1 /Users/manojgopale/Manoj/NLP/datasets/umls_dataset/b23_context.txt /Users/manojgopale/Manoj/NLP/2018AB-full/UMLS_install/2018AB/META/MRCONSO.RRF | grep "ENG" | cut -d "|" -f1,15 | grep -v '[\[(]' | sort -u | sed "s/|/     /g" > b23_full_train.tsv

## Get context id with at least 2 training examples
## Do not forget the sort before putting it in the file, join in next command will skip context 
## 50000 still 2 examples found, will need to sample more examples to get to only 2 examples
join -t "|" -1 1 -2 1 /Users/manojgopale/Manoj/NLP/datasets/umls_dataset/b23_context.txt /Users/manojgopale/Manoj/NLP/2018AB-full/UMLS_install/2018AB/META/MRCONSO.RRF | grep "ENG" | cut -d "|" -f1,15 | grep -v '[\[(]' | sort -u  | cut -d "|" -f1 | sort | uniq -c | sort -nr | head -n 3116 | awk '{print $2}' | sort > /Users/manojgopale/Manoj/NLP/datasets/umls_dataset/b23_with_5_examples_context.txt

## Get context id with at least 5 training examples
## Do not forget the sort before putting it in the file, join in next command will skip context 
join -t "|" -1 1 -2 1 /Users/manojgopale/Manoj/NLP/datasets/umls_dataset/b23_context.txt /Users/manojgopale/Manoj/NLP/2018AB-full/UMLS_install/2018AB/META/MRCONSO.RRF | grep "ENG" | cut -d "|" -f1,15 | grep -v '[\[(]' | sort -u  | cut -d "|" -f1 | sort | uniq -c | sort -nr | head -n 3116 | awk '{print $2}' | sort > /Users/manojgopale/Manoj/NLP/datasets/umls_dataset/b23_with_5_examples_context.txt

## Create tab delimited data of b23, 3116 classes
join -t "|" -1 1 -2 1 /Users/manojgopale/Manoj/NLP/datasets/umls_dataset/b23_with_5_examples_context.txt /Users/manojgopale/Manoj/NLP/2018AB-full/UMLS_install/2018AB/META/MRCONSO.RRF | grep "ENG" | cut -d "|" -f1,15 | grep -v '[\[(]' | sort -u | sed "s/|/        /g" > /Users/manojgopale/Manoj/NLP/datasets/umls_dataset/b23_with_5_examples_context.tsv

###------- 100 -------###
## Do not forget the sort before putting it in the file, join in next command will skip context 
## This is for top 100 context
join -t "|" -1 1 -2 1 /Users/manojgopale/Manoj/NLP/datasets/umls_dataset/b23_context.txt /Users/manojgopale/Manoj/NLP/2018AB-full/UMLS_install/2018AB/META/MRCONSO.RRF | grep "ENG" | cut -d "|" -f1,15 | grep -v '[\[(]' | sort -u  | cut -d "|" -f1 | sort | uniq -c | sort -nr | head -n 100 | awk '{print $2}' | sort > /Users/manojgopale/Manoj/NLP/datasets/umls_dataset/b23_top_100_context.txt

## Create tab delimited data of b23, 3116 classes
join -t "|" -1 1 -2 1 /Users/manojgopale/Manoj/NLP/datasets/umls_dataset/b23_top_100_context.txt /Users/manojgopale/Manoj/NLP/2018AB-full/UMLS_install/2018AB/META/MRCONSO.RRF | grep "ENG" | cut -d "|" -f1,15 | grep -v '[\[(]' | sort -u | sed "s/|/        /g" > /Users/manojgopale/Manoj/NLP/datasets/umls_dataset/b23_top_100_context.tsv

###------------------###

###------- 500 -------###
## Do not forget the sort before putting it in the file, join in next command will skip context 
## This is for top 500 context
join -t "|" -1 1 -2 1 /Users/manojgopale/Manoj/NLP/datasets/umls_dataset/b23_context.txt /Users/manojgopale/Manoj/NLP/2018AB-full/UMLS_install/2018AB/META/MRCONSO.RRF | grep "ENG" | cut -d "|" -f1,15 | grep -v '[\[(]' | sort -u  | cut -d "|" -f1 | sort | uniq -c | sort -nr | head -n 500 | awk '{print $2}' | sort > /Users/manojgopale/Manoj/NLP/datasets/umls_dataset/b23_top_500_context.txt

## Create tab delimited data of b23, 3116 classes
join -t "|" -1 1 -2 1 /Users/manojgopale/Manoj/NLP/datasets/umls_dataset/b23_top_500_context.txt /Users/manojgopale/Manoj/NLP/2018AB-full/UMLS_install/2018AB/META/MRCONSO.RRF | grep "ENG" | cut -d "|" -f1,15 | grep -v '[\[(]' | sort -u | sed "s/|/        /g" > /Users/manojgopale/Manoj/NLP/datasets/umls_dataset/b23_top_500_context.tsv

###------------------###

###------- 1000 -------###
## Do not forget the sort before putting it in the file, join in next command will skip context 
## This is for top 500 context
join -t "|" -1 1 -2 1 /Users/manojgopale/Manoj/NLP/datasets/umls_dataset/b23_context.txt /Users/manojgopale/Manoj/NLP/2018AB-full/UMLS_install/2018AB/META/MRCONSO.RRF | grep "ENG" | cut -d "|" -f1,15 | grep -v '[\[(]' | sort -u  | cut -d "|" -f1 | sort | uniq -c | sort -nr | head -n 1000 | awk '{print $2}' | sort > /Users/manojgopale/Manoj/NLP/datasets/umls_dataset/b23_top_1000_context.txt

## Create tab delimited data of b23, 3116 classes
join -t "|" -1 1 -2 1 /Users/manojgopale/Manoj/NLP/datasets/umls_dataset/b23_top_1000_context.txt /Users/manojgopale/Manoj/NLP/2018AB-full/UMLS_install/2018AB/META/MRCONSO.RRF | grep "ENG" | cut -d "|" -f1,15 | grep -v '[\[(]' | sort -u | sed "s/|/        /g" > /Users/manojgopale/Manoj/NLP/datasets/umls_dataset/b23_top_1000_context.tsv

###------------------###

###------- Ask A Patient -------###
## Sort MRCONSO first
sort -t "|" -k 14 /Users/manojgopale/Manoj/NLP/2018AB-full/UMLS_install/2018AB/META/MRCONSO.RRF > /Users/manojgopale/Manoj/NLP/2018AB-full/UMLS_install/2018AB/META/SORT_MRCONSO.RRF

## Sort the context non-numerically so that it is consistent with the MRCONSO sort
less /Users/manojgopale/Manoj/NLP/datasets/AskAPatient/AskAPatient.fold-*.train.txt | cut -f1 | sort | uniq -c | awk '{print $2}' | sort  > /Users/manojgopale/Manoj/NLP/datasets/umls_dataset/AskAPatient/ask_context.txt

## sort -R , sorts by hash values, and is distinct each time its called
join -t "|" -1 1 -2 14 /Users/manojgopale/Manoj/NLP/datasets/umls_dataset/AskAPatient/ask_context.txt /Users/manojgopale/Manoj/NLP/2018AB-full/UMLS_install/2018AB/META/SORT_MRCONSO.RRF | grep "ENG" | cut -d "|" -f2,15 | grep -v '[\[(]' | sort -u | sort -R | sed "s/|/       /g" > /Users/manojgopale/Manoj/NLP/datasets/umls_dataset/AskAPatient/train.tsv
###------------------###

###------- TwADR -------###
less /Users/manojgopale/Manoj/NLP/datasets/TwADR-L/TwADR-L.fold-*.train.txt | cut -f1 | sort | uniq -c | awk '{print $2}' | sort -n > /Users/manojgopale/Manoj/NLP/datasets/umls_dataset/TwADR-L/TwADR_cui.txt
join -t "|" -1 1 -2 1 /Users/manojgopale/Manoj/NLP/datasets/umls_dataset/TwADR-L/TwADR_cui.txt /Users/manojgopale/Manoj/NLP/2018AB-full/UMLS_install/2018AB/META/MRCONSO.RRF | grep "ENG" | cut -d "|" -f1,15 | grep -v '[\[(]' | sort -u | sed "s/|/ /g" > /Users/manojgopale/Manoj/NLP/datasets/umls_dataset/TwADR-L/TwADR_train.tsv
###------------------###
