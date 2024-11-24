import streamlit as st
import os

def create_folder(folder_name):
    try:
        os.makedirs(folder_name)
        st.success(f"La carpeta '{folder_name}' se ha creado correctamente.")
    except FileExistsError:
        st.warning(f"La carpeta '{folder_name}' ya existe.")
    except OSError as error:
        st.error(f"Error al crear la carpeta: {error}")

folder_name = st.text_input("Ingrese el nombre de la carpeta:")
if st.button("Crear Carpeta"):
    create_folder(folder_name)
