## Ruby Development Environment
### Περιγραφή

>To παρόν project εστιάζει στη δημιουργία ενός περιβάλλοντος ανάπτυξης Ruby σε περιβάλλον Docker. Πιο συγκεκριμένα, υλοποιούνται δύο ανεξάρτητα containers. Στο πρώτο container ενσωματώνεται το  service της Ruby ενώ στο δεύτερο το  service του VS Code, το οποίο χρησιμοποιείται ως editor. Έτσι, δημιουργείται ένα τυποποιημένο περιβάλλον ανάπτυξης Ruby που μπορεί εύκολα να χρησιμοποιηθεί σε οποιοδήποτε μηχάνημα μέσω του Docker.


### Project Components
>- **Ruby Container**: Docker container στο οποίο εκτελείται Alpine OS με εγκατεστημένη τη Ruby για την εκτέλεση των scripts.
>
>- **VS Code Container**: Docker container στο οποίο εκτελείται μια web-based version του VS Code.
>
>- **Shared Volume**: Docker volume το οποίο επιτρέπει τη διατήρηση και την κοινή χρήση δεδομένων μεταξύ των containers Ruby και VS Code.

### Εκτέλεση - Διαχείριση του app

| Option  | Description |
| ------  | ----------- |
| --help  | Εμφανίζονται τα commands για τη διαχείριση του docker app. |
| --build | Build Containers. |
| --start | Start Containers. |
| --stop  | Stop running Containers.  |
| --attach| Attach Container. |
| --exec  | Εκτέλεση ruby file, χωρίς attach. |
| --status  | Containers' status.(Running/Stopped) |

### Example
```
./script.sh --build
./script.sh --start
```
Hit this URL 'http://localhost:8080/' and access the UI of VS Code.
```
./script.sh --exec hello.rb
./script.sh --stop 
```