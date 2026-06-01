-- Add equipo_id column to documento table
ALTER TABLE documento ADD COLUMN equipo_id INT;

-- Add foreign key constraint
ALTER TABLE documento ADD CONSTRAINT fk_documento_equipo 
FOREIGN KEY (equipo_id) REFERENCES equipo(id) ON DELETE SET NULL;

-- Create index for better query performance
CREATE INDEX idx_documento_equipo_id ON documento(equipo_id);
