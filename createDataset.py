import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
import os

## dataDir => contains the path to .tsv file that will be used for splitting
## trainFile => File name of the .tsv that will be used for splitting
## testRatio => percentage of data to be test
## devRAtio => Percentage of data to be dev

def createData(dataDir, trainFile, testRatio, devRatio):
	fullData = pd.read_csv(dataDir + "/" + trainFile, sep="\t", header=None, names=['label', 'text'])

	labels = pd.unique(fullData['label'])
	print("Unique labels in full dataset is: %s\n" %(len(labels))) ## Get unique labels
	print("Full data shape: %s\n" %(fullData.shape,)) ## comma after the fullData.shape is required to print the tuple
	#print("head\n%s" %(fullData.head()))
	
	fullData = fullData.sample(frac=1) ##Shuffle data
	
	if (testRatio != 0 and devRatio != 0):
		## get test set out of the full set
		x_train, x_test, y_train, y_test = train_test_split(fullData['text'], fullData['label'], stratify=fullData['label'], test_size=testRatio)
		
		## split the rest of the train to get dev and train
		x_train, x_dev, y_train, y_dev = train_test_split(x_train, y_train, stratify=y_train, test_size=devRatio)
		
		print("Unique classes per dataset are")
		print("y_train: %s\ty_dev: %s\ty_test: %s" %(len(pd.unique(y_train)), len(pd.unique(y_dev)), len(pd.unique(y_test))))

		## Concat respective sets
		train = pd.concat([y_train, x_train], axis=1)
		dev = pd.concat([y_dev, x_dev], axis=1)
		test = pd.concat([y_test, x_test], axis=1)
		
		print("\nData set sizes are")
		print("train: %s\ndev: %s\ntest: %s\n" %(train.shape, dev.shape, test.shape))

		## Storing it as train, dev and test. The folder names will be used to differentiate between them
		train.to_csv(dataDir + "/train.tsv", sep="\t", header=True, index=False)
		dev.to_csv(dataDir + "/dev.tsv", sep="\t", header=True, index=False)
		test.to_csv(dataDir + "/test.tsv", sep="\t", header=True, index=False)
		
		#pd.Series(labels).to_csv("labels.csv", sep=",", header=False, index=False) ## Save as series
		#l = pd.read_csv("labels.csv") ## Read pandas to_csv file
		
		np.savetxt(dataDir + "/labels.csv", np.array(labels), delimiter=",", fmt="%s") ## Save as np.array
	else:
		## Just return train.tsv and lavels.csv
		fullData.to_csv(dataDir + "/train.tsv", sep="\t", header=True, index=False)
		np.savetxt(dataDir + "/labels.csv", np.array(labels), delimiter=",", fmt="%s") ## Save as np.array


######---------------------Things tried but commented out------------------######
	#l_numpy = np.loadtxt("labels.csv", dtype=object, delimiter=",") ## Read numpy savetxt file
	##l_numpy.tolist() ## Convert to list
	
	#label_list = [var for var in labels] ## Create a list of all the labels
	#np.savetxt("labels.csv", label_list, delimiter=",", fmt="%s") ## Save the list
	#
	#new_labels = np.loadtxt("labels.csv", dtype=object, delimiter=",") ## new_labels is np.array
	#new_labels.tolist() ## Convert it to list
######---------------------Things tried but commented out------------------######

#M## with 5 examples
#MdataDir = "/Users/manojgopale/Manoj/NLP/datasets/umls_dataset"
#MfilePrefix = "b23"
#MtrainFile = "b23_with_5_examples_context.tsv"
#MtestRatio = 0.15
#MdevRatio = 0.19
#M
#McreateData(dataDir, trainFile, filePrefix, testRatio, devRatio)
#M
#M###----------------###

#M###-----top 100------###
#MdataDir = "/Users/manojgopale/Manoj/NLP/datasets/umls_dataset"
#MfilePrefix = "b23_top100"
#MtrainFile = "b23_top_100_context.tsv"
#MtestRatio = 0.10
#MdevRatio = 0.10
#M
#Mprint("%s" %(dataDir+"/"+trainFile))
#McreateData(dataDir, trainFile, filePrefix, testRatio, devRatio)
#M
#M###----------------###
#M
#M###-----top 500------###
#MdataDir = "/Users/manojgopale/Manoj/NLP/datasets/umls_dataset"
#MfilePrefix = "b23_top500"
#MtrainFile = "b23_top_500_context.tsv"
#MtestRatio = 0.10
#MdevRatio = 0.10
#M
#Mprint("%s" %(dataDir+"/"+trainFile))
#McreateData(dataDir, trainFile, filePrefix, testRatio, devRatio)
#M
#M###----------------###
#M
#M###-----top 1000------###
#MdataDir = "/Users/manojgopale/Manoj/NLP/datasets/umls_dataset"
#MfilePrefix = "b23_top1000"
#MtrainFile = "b23_top_1000_context.tsv"
#MtestRatio = 0.10
#MdevRatio = 0.11
#M
#Mprint("%s" %(dataDir+"/"+trainFile))
#McreateData(dataDir, trainFile, filePrefix, testRatio, devRatio)
#M
#M###----------------###


