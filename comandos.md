![Upl![image](https://github.com/user-attachments/assets/be678873-4dbc-45d8-ac59-465df9bd7744)


El contenido del script de python seria el siguiente: 
def escribir_contenido_ldif(contenido, filename):
    """
    Escribe el contenido proporcionado en un archivo con el nombre especificado.
    
    :param contenido: Texto que se escribirá en el archivo.
    :param filename: Nombre del archivo donde se guardará el contenido.
    """
    try:
        with open(filename, 'w', encoding='utf-8') as file:
            file.write(contenido)
        print(f"Archivo '{filename}' creado con éxito.")
    except Exception as e:
        print(f"Error al escribir el archivo: {e}")

# Ejemplo de uso:
ldif_content_example = """
dn: ou=instituto dc=samblas,dc=org
objectClass: top
objectClass: organizationalUnit
ou: testou
dn: ou=instituto dc=samblas,dc=org
objectClass: top
objectClass: organizationalUnit
ou: testou2
"""
escribir_contenido_ldif(ldif_content_example, "output.ldif")
