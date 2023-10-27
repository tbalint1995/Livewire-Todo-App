> [!NOTE]
> Egy webes alkalmazás létrehozása, ahol a felhasználók személyre szabott To-Do listákat készíthetnek, melyek több különleges tulajdonsággal rendelkeznek.

> [!NOTE]
> A példa kedvéért hoztam létre 2 felhasználót, illetve hozzájuk fejenként 2 lehetőséget.

1. 
   - Név: John Doe
      - E-mail: random1@example.com
         - Jelszó: Random12345

2. 
   - Név: Jane Smith
      - E-mail: exampleuser2@gmail.com
         - Jelszó: SecurePass#789

> [!IMPORTANT]
> Mivel én a saját Mailtrapot használtam valós idejű e-mail ellenőrzés funkció teszteléséhez, bárkinek lehetősége van kipróbálni. Ha viszont ezt nem szeretné használni, akkor nyugodtan kapcsolja ki a MustVerifyEmail interfészt. De ha esetleg rendelkezel bármilyen online szolgáltatóval, akkor az .env fájlban végezheti el a szükséges beállításokat ezzel kapcsolatban.

> [!WARNING]
> :speaking_head: A feladat leírása alapján a szűrést kategória, prioritás vagy dátum szerint kell végezni. Én úgy gondoltam, hogy a szűrést kategóriák, prioritás, dátum és státusz alapján hajtom végre.


**Funkcionális követelmények:**

:wave: Az adatbázist mellékelem, az adatbázis neve pedig <sup>code4flow</sup>.

1. Regisztráció/Bejelentkezés
   - A felhasználóknak lehetőségük van regisztrálni az oldalon.
   - Bejelentkezés után érhetik el saját to-do listáikat.

2. To-Do elem létrehozása
   - A felhasználók adhassanak hozzá új feladatot a listájukhoz.
   - Minden feladathoz adjanak meg:
     - Címet (rövid leírást a feladatról)
     - Prioritást (Alacsony, Közepes, Magas)
     - Státuszt (Aktív, Befejezett, Elhalasztott)
     - Kategóriát (pl. Munka, Otthon, Bevásárlás stb.)
     - Kezdeti és befejezési dátumot

3. To-Do elemek listázása
   - A feladatok listázásánál legyenek a következő funkciók:
     - Szűrés kategória, priorítás, vagy dátum szerint

4. To-Do elem módosítása/törlése
   - A felhasználók módosíthassák vagy törölhessék a meglévő feladataikat.
   - Feladatok állapotának kezelése.

5. Dinamikus interakció
   - Amikor a felhasználó módosítja a feladat állapotát (Aktív, Befejezett, Halasztott), az állapotváltozás azonnal, oldalfrissítés nélkül jelenjen meg a felületen. Ezt az interakciót AJAX-szal vagy Livewire-rel valósítsd meg.

6. Törekedj a Service és Repository rétegek használatára.