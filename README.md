# 🐾 Base de Datos - Veterinaria "Nala"

Proyecto académico de diseño e implementación de una base de datos para la veterinaria **“Nala”**, que ofrece servicios médicos, estéticos y de bienestar para mascotas.

---

## 📖 Contexto

La “Veterinaria Nala” ha tenido dificultades administrativas para gestionar su información diaria. Este proyecto busca ofrecer una solución mediante una base de datos relacional que permita organizar datos de dueños, mascotas, servicios, visitas y tratamientos.

---

## 📋 Requerimientos Funcionales

### 🧑‍⚕️ Dueños de Mascotas
- Registro de id, nombre completo, teléfono y dirección.
- Un dueño puede tener varias mascotas.

### 🐶 Mascotas
- Registrar nombre, especie (perro, gato, etc.), raza, edad, sexo y estado de vacunación.
- Cada mascota pertenece a un único dueño.

### 🧼 Servicios
- Servicios ofrecidos: baño, corte de uñas, consulta médica, desparasitación, vacunación.
- Cada servicio debe tiene nombre, descripción y precio base.

### 📅 Visitas
- Se registra cada vez que una mascota es llevada a la veterinaria.
- Cada visita está asociada a una mascota, un servicio y una fecha.
- Una visita implica un solo servicio.

### 💊 Tratamientos
- Cada tratamiento tiene nombre, observaciones y está vinculado a una visita.

---

## 🧩 Diagrama E-R

Incluye las entidades:

- **Dueño**
- **Mascota**
- **Servicio**
- **Visita**
- **Tratamiento**

Relaciones, cardinalidades, llaves primarias y foráneas están debidamente especificadas.

📎 ![Diagrama Entidad-Relación](/multimedia/Diagrama_UML-ER.webp)

---

## 🗂️ Scripts del Proyecto

### 📄 estructura.sql
- Crea las tablas con sus respectivos campos, tipos de datos, claves primarias y foráneas.

### 📄 datos.sql
Incluye al menos:
- 5 dueños
- 10 mascotas
- 5 servicios
- 10 visitas
- 5 tratamientos

### 📄 consultas.sql
Contiene **mínimo 15 consultas** que aplican lo siguiente:

- ✅ Creación de tabla a partir de una consulta
- ✅ Alias en campos
- ✅ Alias en subconsultas
- ✅ Funciones de agregación: `COUNT`, `AVG`, `MAX`, etc.
- ✅ Alias en funciones de agregación
- ✅ `CONCAT`
- ✅ Funciones de texto: `UPPER`, `LOWER`, `LENGTH`, `SUBSTRING`, `TRIM`
- ✅ `ROUND`
- ✅ Uso de `IF` en campos *(consultado e implementado)*
- ✅ Opcionales: `JOIN`, `ORDER BY`, `GROUP BY`, entre otras


---

## 🎥 Video de Explicación

🔗 [Ver video explicativo aquí](/multimedia/Video_explicacion_mySQL.mp4)

En este video se explica detalladamente el funcionamiento de las consultas SQL implementadas en `consultas.sql`.

---


## 🤝 Participantes

- **Valentina Delgado**
- **Camila Florez** 
---

## 📜 Contacto GitHub
- https://github.com/ValentinaDelgadoRincon
- https://github.com/CamilaFlorez12

