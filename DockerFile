# Χρήση μιας βασικής εικόνας Python
FROM python:3.8-slim

# Ορισμός του εργασιακού καταλόγου
WORKDIR /myPipeline

# Αντιγραφή του αρχείου requirements.txt στον εργασιακό κατάλογο
COPY requirements.txt .

# Εγκατάσταση των απαιτούμενων πακέτων
RUN pip install --no-cache-dir -r requirements.txt

# Αντιγραφή όλου του περιεχομένου του τρέχοντος καταλόγου στον εργασιακό κατάλογο στο Docker image
COPY . .

# Ορισμός της εντολής που θα εκτελεστεί όταν ξεκινά το container
CMD ["python", "app.py"]

