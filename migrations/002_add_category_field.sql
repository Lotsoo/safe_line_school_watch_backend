-- Add category column to reports table
ALTER TABLE reports ADD COLUMN IF NOT EXISTS category VARCHAR(100) DEFAULT '';

-- Update existing records to have a default category if needed
UPDATE reports SET category = 'Stress' WHERE category = '' OR category IS NULL;
