-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS events_db;
USE events_db;

-- Crear la tabla de categorías
CREATE TABLE IF NOT EXISTS categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

-- Crear la tabla de eventos
CREATE TABLE IF NOT EXISTS events (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    event_date DATETIME NOT NULL,
    location VARCHAR(255),
    latitude DECIMAL(10, 6) NULL,
    longitude DECIMAL(10, 6) NULL,
    image_url VARCHAR(500) NULL,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE SET NULL
);

-- Insertar algunas categorías de ejemplo
INSERT INTO categories (name) VALUES
('Conferencia'),
('Concierto'),
('Exposición'),
('Taller'),
('Deporte');

-- Insertar algunos eventos de ejemplo
INSERT INTO events (title, description, event_date, location, latitude, longitude, image_url, category_id)
VALUES
('Tech Conference 2025', 'Un evento sobre las últimas tendencias en tecnología.', '2025-06-15 10:00:00', 'Centro de Convenciones', 40.712776, -74.005974, 'https://via.placeholder.com/300', 1),
('Rock Fest 2025', 'Festival de rock con bandas internacionales.', '2025-07-20 18:00:00', 'Parque Central', 34.052235, -118.243683, 'https://via.placeholder.com/300', 2),
('Exposición de Arte Moderno', 'Una muestra de arte contemporáneo.', '2025-05-10 15:00:00', 'Museo de Arte', 48.856613, 2.352222, 'https://via.placeholder.com/300', 3),
('Taller de Fotografía', 'Aprende técnicas avanzadas de fotografía.', '2025-08-05 09:00:00', 'Centro Cultural', NULL, NULL, 'https://via.placeholder.com/300', 4),
('Maratón 2025', 'Carrera de 42km por la ciudad.', '2025-09-12 07:00:00', 'Avenida Principal', 51.507351, -0.127758, 'https://via.placeholder.com/300', 5);
