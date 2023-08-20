import streamlit as st
import re
import os
import main_file
st.title('Audio Encryption')
st.subheader("\n\t\tAUDIO STEGANOGRAPHY OPERATIONS") 
st.write("1. Encode the Text message")  
st.write("2. Decode the Text message")  
st.write("3. Exit")  
choice1 = int(st.text_input("Enter the Choice:",3))
if choice1 == 1:
    st.subheader("File")
    file = st.file_uploader("Upload File",type=["wav"])
    st.write('Convert mp3 to wav')
    st.write('https://cloudconvert.com/mp3-to-wav')
    if file is not None:
        file_details = {"filename":file.name, "filetype":file.type,
                        "filesize":file.size}
        st.write(file_details)
    
        with open(os.path.join("fileDir",file.name),"wb") as f:
            f.write((file).getbuffer())
    
        st.success("File Saved")
        data=st.text_input("Enter the data to be encoded","default")
        stegofile=st.text_input("Enter the name of encrypted file with extension","default")
        if(data !="deafult"and stegofile !="default"): 
            main_file.encode_aud_data(file.name,stegofile,data)
            st.success('Encyption Succesful')
            audio_file = open(f"fileDir/{stegofile}", 'rb')
            audio_bytes = audio_file.read()

            st.audio(audio_bytes)
elif choice1 == 2:
    st.subheader("Enter the File to Decrypt")
    file = st.file_uploader("Upload File",type=["wav"])

    if file is not None:
        file_details = {"filename":file.name, "filetype":file.type,
                        "filesize":file.size}
        with open(os.path.join("fileDir",file.name),"wb") as f:
            f.write((file).getbuffer())
        ans=main_file.decode_aud_data(file.name)
        st.write("The decrypted text was:",{ans})





