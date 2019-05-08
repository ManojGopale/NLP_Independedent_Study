import sys
sys.path.insert(0, '/Users/manojgopale/Manoj/NLP/datasets/scr/')

from createDataset import createData

##Call createData from the imported file to create data
dataDir="/Users/manojgopale/Manoj/NLP/datasets/umls_dataset/TwADR-L"
trainFile="TwADR_train.tsv"
testRatio=0
devRatio=0
createData(dataDir, trainFile, testRatio, devRatio)
