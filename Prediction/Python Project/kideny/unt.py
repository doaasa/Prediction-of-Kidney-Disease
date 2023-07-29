import random
from Bio.SeqRecord import SeqRecord
import streamlit as st
import matplotlib.pyplot as plt 
import matplotlib
matplotlib.use("Agg")
from Bio.Seq import Seq 
from Bio import SeqIO
#from collections import Counter
#import neatbio.sequtils as utils
import numpy as np 
#from PIL import Image
import joblib
import pandas as pd
#from bokeh.plotting import figure
from Bio import pairwise2
from Bio.pairwise2 import format_alignment
from Bio import SeqIO
from Bio.Seq import Seq
from Bio.Data import CodonTable
from Bio.Seq import reverse_complement, transcribe, back_transcribe, translate
from PIL import Image
from Bio import SeqIO
from Bio.SeqUtils import GC
import pylab
import glob
from keras.models import Sequential, load_model
import numpy as np
import pandas as pd
import keras as k
from keras.layers import Dense
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import LabelEncoder, MinMaxScaler
import matplotlib.pyplot as plt



def Prediction_OfKidneyDisease():
    

    sg =           st.number_input("Specific Gravity", 1.0, 2.0, 1.0,.1)
    al =   st.number_input("Albumin", 0, 6 ,0,1)
    bu =       st.slider("Blood Urea", 0, 1000, 20, 1)
    sc = st.slider("Serum Creatinine", 0.1, 20.0, 0.0, .1)
    hemo = st.slider('Hemoglobin', 1.0, 25.0, 5.0, .2)
    pcv =       st.slider("Packed Cell Volume", 0, 70, 12, 1)
    htn =           st.slider("Hypertension", 0,1,0,1)
    d = {'sg':[sg], 'al': [al],'bu':[(bu/100)], 'sc':[(sc/100)],'hemo':[hemo], 'pcv':[(pcv/100)], 'htn':[htn]}
    df = pd.DataFrame(data=d)
        
    model = load_model( "C:/Users/Electronica/Desktop/colage/Python Project/kideny/KidenyDiseaseClassification.model")
    pred = model.predict(df)
    pred = [1 if y>=0.5 else 0 for y in pred]
    scores = model.evaluate(df)
    
    if (st.button('Find Health Status')):
        #print("Predicted : {0}".format(", ".join([str(x) for x in pred])))
        if(str(pred[0])=='0'):
            st.write("You don't have Kidney Disease.")
        elif (str(pred[0])=='1'):
            st.write("You have Kidney Disease.")      
    


def main():
    st.title("APP")
    
    
    menu = ["Prediction"]
    choice = st.sidebar.selectbox("Select Activity", menu)
    
    if choice== "Prediction":
        st.subheader("Prediction")
        image = Image.open('C:/Users/Electronica/Desktop/colage/Python Project/kideny/kidney-disease-froedtert-today-1200x628.jpg')
        st.image(image,width=150, use_column_width= 'auto' )
        Prediction_OfKidneyDisease()
        
        
if __name__ == '__main__':
    main()
         