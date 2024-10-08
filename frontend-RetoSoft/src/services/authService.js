
import api from './api'; 

// Función para manejar el inicio de sesión
export const login = async (type_document, document, born_date) => {
  try {
    // Enviar solicitud de inicio de sesión
    const response = await api.post('/access/token', new URLSearchParams({
      grant_type: '',
      type_document: type_document,
      document: document,
      born_date: born_date
    }), {
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded'
      }
    });
    
    // Retornar la respuesta de la API
    return response;
  } catch (error) {
    // Manejar errores de la solicitud
    if (error.response) {
      throw error; // Lanza el error para que lo maneje el store
    } else {
      throw new Error('Error de red o de servidor'); // Manejar errores de red
    }
  }
};

