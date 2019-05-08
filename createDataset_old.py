import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
import os

dataDir = "/Users/manojgopale/Manoj/NLP/datasets/umls_dataset"

fullData = pd.read_csv(os.path.join(dataDir + "b23_with_5_examples_context.tsv"), sep="\t", header=None, names=['label', 'text'])
pd.unique(fullData['label']) ## Get unique labels

fractions = np.array([0.6, 0.2, 0.2])
fullData = fullData.sample(frac=1) ##Shuffle data

## This splits the train and dev in 0.6 and 0.4, making sure 
## each set contains at least 1 training example from all labels

## get 15% (3973 samples) from the total data with at least 1 example from 3116 classes
x_train, x_test, y_train, y_test = train_test_split(fullData['text'], fullData['label'], stratify=fullData['label'], test_size=0.15)

## Now split the remaining with 15% as dev and remaining as training
x_train, x_dev, y_train, y_dev = train_test_split(x_train, y_train, stratify=y_train, test_size=0.15)
x_train, x_dev, y_train, y_dev = train_test_split(x_train, y_train, stratify=y_train, test_size=0.19)

##>>> x_train.shape
##(18066,)
##>>> x_dev.shape
##(4238,)
##>>> x_test.shape
##(3937,)

train = pd.concat([y_train, x_train], axis=1)
dev = pd.concat([y_dev, x_dev], axis=1)
test = pd.concat([y_test, x_test], axis=1)

train.to_csv("b23_train.tsv", sep="\t", header=True, index=False)
dev.to_csv("b23_dev.tsv", sep="\t", header=True, index=False)
test.to_csv("b23_test.tsv", sep="\t", header=True, index=False)

#pd.Series(labels).to_csv("labels.csv", sep=",", header=False, index=False) ## Save as series
#l = pd.read_csv("labels.csv") ## Read pandas to_csv file

np.savetxt("labels.csv", np.array(labels), delimiter=",", fmt="%s") ## Save as np.array
l_numpy = np.loadtxt("labels.csv", dtype=object, delimiter=",") ## Read numpy savetxt file
##l_numpy.tolist() ## Convert to list

#label_list = [var for var in labels] ## Create a list of all the labels
#np.savetxt("labels.csv", label_list, delimiter=",", fmt="%s") ## Save the list
#
#new_labels = np.loadtxt("labels.csv", dtype=object, delimiter=",") ## new_labels is np.array
#new_labels.tolist() ## Convert it to list
