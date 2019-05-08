# NLP_Independedent_Study
Scripts used during NLP Independenet Study with Dr. Steve

# createUMLS_data.sh
This script creates CUI's from UMLS database, helps create train data from the relevant cui's

# createDataset.py
This script creates train data, dev and test for BERT or any other classifier. The ratio of dev, test and train can be manually chossen. This created dev and train such that we can get at least 1 label in the dev and train from the list of unique labels in train.

# create_data.py
Main file run to craete data. Uses createData function from the createData.py file.
