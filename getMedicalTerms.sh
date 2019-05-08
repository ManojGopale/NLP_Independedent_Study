less ../AskAPatient/* | cut -f2 | sort | uniq -c | sort > askTerms.txt
less ../TwADR-L/* | cut -f2 | sort | uniq -c | sort > TwADRTerms.txt

## Since the first number in the files coresspond to the numbers in MRCONFO.RBF files
less ../AskAPatient/* | cut -f1 | sort | uniq -c | sort > askNumCount.txt
less ../TwADR-L/* | cut -f1 | sort | uniq -c | sort > TwADR_NumCount.txt

less askNumCount.txt | cut -d " " -f2 | wc -l
1036


