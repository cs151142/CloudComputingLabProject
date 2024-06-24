## Ruby Development Environment
### περιγραφή
To παρόν project εστιάζει στη δημιουργία ενός περιβάλλοντος ανάπτυξης Ruby σε περιβάλλον Docker. Ποιο συγκεκριμένα, υλοποιούνται δύο ανεξάρτητα containers. Στο πρώτο container ενσωματώνεται το  service της Ruby ενώ στο δεύτερο το  service του VS Code, το οποίο χρησιμοποιείται ως editor. Έτσι, δημιουργείται ένα τυποποιημένο περιβάλλον ανάπτυξης Ruby που μπορεί εύκολα να χρησιμοποιηθεί σε οποιοδήποτε μηχάνημα μέσω του Docker.

### Project Components
- **Ruby Container**: Docker container στο οποίο εκτελείται Alpine OS με εγκατεστημένη τη Ruby για την εκτέλεση των scripts.

- **VS Code Container**: Docker container στο οποίο εκτελείται μια web-based version του VS Code.

- **Shared Volume**: Docker volume το οποίο επιτρέπει τη διατήρηση και την κοινή χρήση δεδομένων μεταξύ των containers Ruby και VS Code.

### Εκτέλεση - διαχείριση του app
#### ./script.sh
Εμφανίζονται τα commands για τη διαχείριση του docker app.

#### ./script.sh --build
Build Containers.

#### ./script.sh --start
Start Containers.

Όταν τα services βρίσκονται σε λειτουργία, μπορούμε να βρούμε τη web-based version του VS Code στη διεύθυνση 'http://localhost:8080/', για τη δημιουργία και διαχείριση των ruby files.

#### ./script.sh --attach ID
Attach σε συγκεκριμένο container.

#### ruby file.rb
Εκτέλεση ruby file, αφού έχει γίνει attach.

#### ./script.sh --exec file.rb
Εκτέλεση ruby file, χωρίς να έχει γίνει attach.

#### ./script.sh --stop
Stop running containers
