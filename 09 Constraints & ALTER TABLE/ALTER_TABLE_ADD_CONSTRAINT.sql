ALTER TABLE houses 
ADD CONSTRAINT positive_pprice CHECK (purchase_price >= 0);