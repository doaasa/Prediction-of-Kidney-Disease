from streamlit_option_menu import option_menu
import streamlit as st
import pandas as pd
from PIL import Image
from keras.models import load_model



def Prediction_OfKidneyDisease():
    
    sg =           st.number_input("Specific Gravity", 1.0, 2.0, 1.0,.1)
    al =           st.number_input("Albumin", 0, 6 ,0,1)
    bu =           st.slider("Blood Urea", 0, 1000, 20, 1)
    sc =           st.slider("Serum Creatinine", 0.1, 20.0, 0.0, .1)
    hemo =         st.slider('Hemoglobin', 1.0, 25.0, 5.0, .2)
    pcv =          st.slider("Packed Cell Volume", 0, 70, 12, 1)
    htn =          st.slider("Hypertension", 0,1,0,1)
    d = {'sg':[sg], 'al': [al],'bu':[(bu/100)], 'sc':[(sc/100)],'hemo':[hemo], 'pcv':[(pcv/100)], 'htn':[htn]}
    df = pd.DataFrame(data=d)
        
    model = load_model( "C:/Users/Electronica Care/Desktop/RDF/Prediction/Python Project/kideny/KidenyDiseaseClassification.model")
    pred = model.predict(df)
    pred = [1 if y>=0.5 else 0 for y in pred]
    
    if (st.button('Find Health Status')):
        if(str(pred[0])=='0'):
            st.write("You don't have Kidney Disease.")
        elif (str(pred[0])=='1'):
            st.write("You have Kidney Disease.") 
            

    
def main():
     
    if selected3 == "Prediction Of Kidney Disease":
        image = Image.open('C:/Users/Electronica Care/Desktop/RDF/Prediction/Python Project/kideny/kidney-disease-froedtert-today-1200x628.jpg')
        st.image(image,width=100, use_column_width= True )
        st.subheader("You Can Discover your health here")
        Prediction_OfKidneyDisease()
        
 
      
######################################################################################################

st.markdown("<h1 style='text-align: center; color: white;'>Scientific Data Management Project </h1>", unsafe_allow_html=True)
st.markdown("<br></br>", unsafe_allow_html=True)

    
selected3 = option_menu(None, ['Prediction Of Kidney Disease'], 
     icons=['house', 'cloud-upload', "list-task", 'gear'], 
     menu_icon="cast", default_index=0, orientation="horizontal",
     styles={
         "container": {"padding": "0!important", "background-color": "##FFFF00","display":"inline"},
         "icon": {"color": "orange", "font-size": "15px"}, 
         "nav-link": {"font-size": "15px", "text-align": "left", "margin":"10px", "--hover-color": "#blue"},
         "nav-link-selected": {"background-color": "red"},
     }
 )     
   
if __name__ == '__main__':
    main()


