# EXERCISE DINOSAURS DB ----------

# ANSWERS BELOW ----------

# 1) Let's start by figuring out how many dinosaurs we have. Count the number of
# dinosaurs.

# dinosaurs=# SELECT COUNT(id) FROM dinos;
#  count
# -------
#    331
# (1 row)
#------------------------------------------------------------------------------



# 2) We want to open up our own version of Jurassic Park, but this time only with
# dinosaurs who are actually from the Jurassic period. Find all the dinosaurs from
# the Jurassic period.

# dinosaurs=# SELECT name FROM dinos WHERE period = 'Jurassic';
# name
# ---------------------
# Yuanmousaurus
# Yinlong
# Yingshanosaurus
# Yimenosaurus
# Yangchuanosaurus
# Yandusaurus
# Vulcanodon
# Tuojiangosaurus
# Torvosaurus
# Yunnanosaurus
# Sinraptor
# Stegosaurus
# Seismosaurus
# Segisaurus
# Scutellosaurus
# Scelidosaurus
# Saurophaganax
# Sarcosaurus
# Shunosaurus
# Rhoetosaurus
# Poekilopleuron
# Podokesaurus
# Piatnitzkysaurus
# Proceratosaurus
# Patagosaurus
# Pantydraco
# Datousaurus
# Ornitholestes
# Omeisaurus
# Nqwebasaurus
# Monolophosaurus
# Othnielia
# Megalosaurus
# Massospondylus
# Marshosaurus
# Mamenchisaurus
# Lufengosaurus
# Lophostropheus
# Lexovisaurus
# Metriacanthosaurus
# Lesothosaurus
# Kentrosaurus
# Juravenator
# Jingshanosaurus
# Janenschia
# Huayangosaurus
# Heterodontosaurus
# Kotasaurus
# Guanlong
# Giraffatitan
# Gasosaurus
# Gargoyleosaurus
# Eustreptospondylus
# Europasaurus
# Haplocanthosaurus
# Emausaurus
# Euhelopus
# Elaphrosaurus
# Dubreuillosaurus
# Dryosaurus
# Diplodocus
# Dilophosaurus
# Dicraeosaurus
# Cryolophosaurus
# Compsognathus
# Coelurus
# Chungkingosaurus
# Chirostenotes
# Chinshakiangosaurus
# Chaoyangsaurus
# Dacentrurus
# Cetiosaurus
# Cetiosauriscus
# Ceratosaurus
# Chialingosaurus
# Brachytrachelopan
# Brachiosaurus
# Bellusaurus
# Barosaurus
# Barapasaurus
# Camarasaurus
# Anchisaurus
# Amygdalodon
# Ammosaurus
# Allosaurus
# Agilisaurus
# Apatosaurus
# Lapparentosaurus
# Hesperosaurus
# Camptosaurus
# Aardonyx
# Archaeopteryx
# (92 rows)
#------------------------------------------------------------------------------



# 3) Jurassic Park was a huge success for us. Now we want to open up a sequel
# park: Cretaceous Park. This time though, we're a little more organized, and we
# want to know how much space all these dinosaurs are going to take up. Find the
# total sum length of all the dinosaurs from the Cretaceous period.

# dinosaurs=# SELECT SUM(length) FROM dinos WHERE period = 'Cretaceous';
#    sum
# ---------
#  1366.45
# (1 row)
#------------------------------------------------------------------------------



# 4) Great news! Our board of investors recently secured us a large island where
 # we can put all the dinosaurs from both Jurassic Park and Cretaceous Park. This
 # new park will be called Juraceous Park, which according to our focus groups
 # really rolls off the tongue. Find all the dinosaurs from either the Jurassic
 # OR Cretaceous periods, and order them by their species name alphabetically.

 # dinosaurs=# SELECT name FROM dinos WHERE period = 'Jurassic' OR  period =
 # 'Cretaceous' ORDER BY species ASC;

 #------------------------------------------------------------------------------



# 5) Saurischians are the "lizard hipped" order of dinosaurs, and one of the two
 # main branches. All carnivorous dinosaurs are Saurischians, but not all
 # Saurischians are carnivorous. Find all the dinosaurs from the t_order Saurischia
 # that are Herbivorous.

# dinosaurs=# SELECT name FROM dinos WHERE t_order = 'Saurischia' AND diet = 'Herbivorous';
#  name
# ---------------------
# Yuanmousaurus
# Yimenosaurus
# Vulcanodon
# Supersaurus
# Sonidosaurus
# Seismosaurus
# Saltasaurus
# Rebbachisaurus
# Quaesitosaurus
# Shunosaurus
# Rhoetosaurus
# Plateosaurus
# Pelorosaurus
# Patagosaurus
# Pantydraco
# Paralititan
# Datousaurus
# Pleurocoelus
# Opisthocoelicaudia
# Omeisaurus
# Nigersaurus
# Neuquenosaurus
# Nemegtosaurus
# Mussaurus
# Maxakalisaurus
# Malawisaurus
# Mamenchisaurus
# Lufengosaurus
# Magyarosaurus
# Ligabuesaurus
# Jobaria
# Jingshanosaurus
# Janenschia
# Isisaurus
# Hypselosaurus
# Kotasaurus
# Guaibasaurus
# Giraffatitan
# Europasaurus
# Haplocanthosaurus
# Erketu
# Euhelopus
# Diplodocus
# Dicraeosaurus
# Chubutisaurus
# Chinshakiangosaurus
# Cetiosaurus
# Cetiosauriscus
# Brachytrachelopan
# Brachiosaurus
# Bellusaurus
# Barosaurus
# Barapasaurus
# Austrosaurus
# Camarasaurus
# Aragosaurus
# Antarctosaurus
# Anchisaurus
# Amygdalodon
# Ampelosaurus
# Amargasaurus
# Ammosaurus
# Alamosaurus
# Apatosaurus
# Lapparentosaurus
# Aardonyx
# Argentinosaurus
# Aegyptosaurus
# (68 rows)
#
#------------------------------------------------------------------------------



# 6) Dinosaur names are hard to remember. Find the shortest dinosaur, and
# rename it Shortie.

# dinosaurs=# SELECT name FROM dinos WHERE length = (SELECT MIN(length) FROM dinos);
#     name
# -------------
#  Liaoxiornis
# (1 row)

# dinosaurs=# UPDATE dinos SET name = 'Shortie' WHERE name = (SELECT name FROM dinos WHERE length = (SELECT MIN(length) FROM dinos));
# UPDATE 1
# dinosaurs=# SELECT name FROM dinos WHERE name = 'Shortie';
#   name
# ---------
#  Shortie
# (1 row)
#------------------------------------------------------------------------------



# 7) It's the first day of Dino School, and we're doing roll call. Find the
# alphabetically first dinosaur, so we can make sure they're present for class.

# dinosaurs=# SELECT name FROM dinos ORDER BY name ASC LIMIT 1;
# name   
# ----------
# Aardonyx
# (1 row)
