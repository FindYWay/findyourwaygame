// lib/models/finishGameModel.dart
import 'package:flutter/material.dart';

class FinishGameModel {
  final String name;
  final String imgPath;
  final String description;
  final String whatYouDo;
  final String profile;
  
  const FinishGameModel({
    required this.name,
    required this.imgPath,
    required this.description,
    required this.whatYouDo,
    required this.profile,
  }) : assert(name != ''),
       assert(imgPath != ''),
       assert(description != ''),
       assert(whatYouDo != ''),
       assert(profile != '');
}

const List<FinishGameModel> allFinishGame = [
  FinishGameModel(
    name: "Heartbeat",
    imgPath: "assets/finish_game/3.png",
    description: "L'Obiettivo di Sviluppo Sostenibile 3.4 mira a ridurre la mortalità prematura, dovuta a malattie non trasmissibili attraverso la prevenzione e il trattamento e promuovere la salute mentale e il benessere. 🩺 🧠",
    whatYouDo: "🚀 Promuoverai la sensibilizzazione dell'opinione pubblica sulle malattie non trasmissibili e sull'importanza della salute mentale, aumentando la consapevolezza sui comportamenti di vita sani e sull'importanza della prevenzione nella salute mentale, al fine di implementare il benessere della società.",
    profile: "heartbeat",
  ),
  FinishGameModel(
    name: "Global Classroom",
    imgPath: "assets/finish_game/4.png",
    description: "L'Obiettivo di Sviluppo Sostenibile 4.6 vuole garantire che tutti i giovani, e la maggior parte degli adulti, sia uomini che donne, raggiungrano l'alfabetizzazione e la capacità di calcolo. 🧮 📚",
    whatYouDo: "🚀 Contribuirai all'apertura di nuovi spazi per un'istruzione di qualità per tutte le età, al fine di garantire opportunità formative nell'alfabetizzazione, la matematica base, le scienze e le lingue, attraverso attività di istruzione non formale.",
    profile: "global_classroom",
  ),
  FinishGameModel(
    name: "Youth 4 impact",
    imgPath: "assets/finish_game/4.png",
    description: "L'Obiettivo di Sviluppo Sostenibile 4.7 si pone la meta di far acquisire a tutti gli studenti le conoscenze e le compenze necessarie per promuovere lo sviluppo sostenibile, anche attraverso l'educazione. ♻️️",
    whatYouDo: "🚀 Sarai promotore di spazi educativi sugli Obiettivi di Sviluppo Sostenibile, nonché su questioni locali e globali, collaborando con scuole e ONG locali in varie comunità, attraverso l'utilizzo di metodi educativi interattivi e non formali.",
    profile: "youth_4_impact",
  ),
  FinishGameModel(
    name: "Raise your voice",
    imgPath: "assets/finish_game/5.png",
    description: "L'Obiettivo di Sviluppo Sostenibile 5.1 vuole porre fine a tutte le forme di discriminazione nei confronti delle donne e delle ragazze di tutto il mondo. 💕",
    whatYouDo: "🚀 Sarai promotore di spazi educativi che generino consapevolezza sulle questioni di genere, sviluppando iniziative volte a trovare soluzioni alla disuguaglianza di genere nelle comunità di tutto il mondo, attraverso la realizzazione di workshop e attività di sensibilizzazione.",
    profile: "raise_your_voice",
  ),
  FinishGameModel(
    name: "Skill up!",
    imgPath: "assets/finish_game/8.png",
    description: "L'Obiettivo di Sviluppo Sostenibile 8.6 lotta contro la disoccupazione giovanile e vuole ridurre la percentuale di giovani che non studiano, non lavorano e non seguono corsi di formazione ⚒️ 💻",
    whatYouDo: "🚀 Contribuirai a fornire ai giovani corsi di formazione sulle competenze trasversali e tecniche necessari per qualificarsi per un lavoro dignitoso, provvederai all'orientamento lavorativo dei giovani e collaborerai con le scuole per creare e condurre dei corsi di formazione e sviluppare competenze imprenditoriali.",
    profile: "skill_up",
  ),
  FinishGameModel(
    name: "On the map",
    imgPath: "assets/finish_game/8.png",
    description: "L'Obiettivo di Sviluppo Sostenibile 8.9 vuole elaborare e attuare politiche al fine di promuovere un turismo sostenibile, affinché si creino nuovi posti di lavoro e si promuova la cultura e i prodotti locali. 🗿🏝️️",
    whatYouDo: "🚀 Rafforzerai le capacità delle comunità locali di sviluppare attività turistiche che generino entrate e favoriscano l'occupazione, promuovendo workshop e spazi educativi per promuovere tali capacità; condurrai, inoltre, ricerche sul campo riguardo il valore storico, culturale e ambientale della regione al fine di aiutare le comunità nel creare proposte interessanti per il mercato.",
    profile: "on_the_map",
  ),
  FinishGameModel(
    name: "Equify",
    imgPath: "assets/finish_game/10.png",
    description: "L'Obiettivo di Sviluppo Sostenibile 10.2 promuove l'inclusione e l'emancipazione sociale, economica e politica di tutti, indipendentemente da età, sesso, razza, disabilità, etnia, origine, religione o condizione economica. 🫂 ✊",
    whatYouDo: "🚀 Contribuirai alla creazione di spazi educativi e darai vita ad iniziative locali per affrontare la discriminazione e la disuguaglianza nella comunità, attraverso l'organizzazione di workshop e attività dinamiche sui temi dei diritti umani.",
    profile: "equify",
  ),
  FinishGameModel(
    name: "Green leaders",
    imgPath: "assets/finish_game/13.png",
    description: "L'Obiettivo di Sviluppo Sostenibile 13.3 vuole la sensibilizzazione e le capacità umane e istituzionali in materia di mitigazione dei cambiamenti climatici, adattamento e riduzione dell'impatto. 🌿",
    whatYouDo: "🚀 Contribuirai ad educare le comunità sui cambiamenti climatici e sviluppando piani d'azione per ridurre i fattori critici che incidono sull'ambiente, sviluppando soluzioni e iniziative per ridurre l'impatto dei cambiamenti climatici.",
    profile: "green_leaders",
  ),
  FinishGameModel(
    name: "Aquatica",
    imgPath: "assets/finish_game/14.png",
    description: "L'Obiettivo di Sviluppo Sostenibile 14.1 mia a prevenire e ridurre significativamente l'inquinamento marino di ogni tipo, in particolare quello derivante da attività terrestri. 🌊",
    whatYouDo: "🚀 Contribuirai a fornire alle comunità che vivono vicino alle zone marine e costiere attività concrete per migliorare la sostenibilità della costa e proteggere la fauna marina che popola questi ecosistemi. Realizzerai spazi educativi e attività sul campo per prevenire e fermare l'inquinamento degli ecosistemi e sarai responsabile della pianificazione e dell'esecuzione di campagne di sensibilizzazione.",
    profile: "aquatica",
  ),
  FinishGameModel(
    name: "Rooted",
    imgPath: "assets/finish_game/15.png",
    description: "L'Obiettivo di Sviluppo Sostenibile 15.5 mira ad adottare misure urgenti e significative per ridurre il degrado degli habitat naturali, arrestare la perdita di biodiversità e proteggere e prevenire l'estinzione delle specie minacciate. 🌱 🐿️",
    whatYouDo: "🚀 Contribuirai a raffonzare la capacità delle comunità di rispondere e agire in merito al degrado degli habitat naturali, alla perdita di diversità e alla protezione della fauna selvatica e sarai responsabile della promozione di spazi educativi sulla vita sulla terra, la biodiversità degli ecosistemi e la protezione degli animali selvatici.",
    profile: "rooted",
  ),
  FinishGameModel(
    name: "Scale up!",
    imgPath: "assets/finish_game/17.png",
    description: "L'Obiettivo di Sviluppo Sostenibile 17.17 incoraggiare e promuovere partnership efficaci tra settore pubblico, privato e società civile, basandosi sull'esperienza e sulle strategie di finanziamento delle partnership, sui dati, sul monitoraggio e sulla responsabilità. 🫂 ✨",
    whatYouDo: "🚀 Contribuirai a rafforzare la capacità delle organizzazioni locali di contribuire all'impatto sociale nelle loro comunità, collaborando con progetti sociali locali e impegnandosi in iniziative di base, attraverso la conduzione di analisi sulle esigenze delle organizzazioni private, identificando i punti di miglioramento nei loro progetti sociali e individuando le carenze, presentando soluzioni realistiche.",
    profile: "scale_up",
  ),
  FinishGameModel(
    name: "Explorer",
    imgPath: "assets/finish_game/4.png",
    description: "L'Obiettivo di Sviluppo Sostenibile 4.1 mira a garantire che tutte le ragazze e tutti i ragazzi completino un'istruzione primaria e secondaria gratuita, equa e di qualità che porti a risultati di apprendimento pertinenti ed efficaci. 🚫 👾",
    whatYouDo: "🚀 Sosterrai attività e conoscenze necessarie per vivere in condizioni naturali, come la matematica, la comunicazione interculturale e il lavoro di squadra, includendo anche stili di apprendimento creativi ed efficaci, riducendo al minimo l'uso di tecnologie.",
    profile: "explorer",
  ),
  FinishGameModel(
    name: "Happy bus",
    imgPath: "assets/finish_game/4.png",
    description: "L'Obiettivo di Sviluppo Sostenibile 4.2 mia a garantire l'accesso a un'istruzione prescolare, a cure e a un'educazione della prima infanzia di qualità, in modo che tutti i bambini e le bambine siano pronti per l'istruzione primaria. 👶 🧩",
    whatYouDo: "🚀 Contribuirai a fornire e aprire spazi per un'istruzione di qualità ai bambini piccoli provenienti da piccole città e villaggi, garantendo opportunità educative e sociali, animerai il tempo dei bambini piccoli, introducendo elementi di educazione alla diversità culturale, insegnando la lingua inglese e creando un'atmosfera amichevole, viaggiando di villaggio in villaggio.",
    profile: "happy_bus",
  ),
  FinishGameModel(
    name: "Fingerprint",
    imgPath: "assets/finish_game/4.png",
    description: "L'Obiettivo di Sviluppo Sostenibile 4.4 mia a sviluppare in adulti e giovani competenze pertinenti, comprese quelle tecniche e professionali, per l'occupazione, il lavoro dignitoso e l'imprenditorialità. 🎨 📷",
    whatYouDo: "🚀 Contribuirai a sviluppare competenze cognitive e trasferibili di alto livello per persone di tutte le età attraverso attività e workshop legati alla produzione artistica (ad esempio pittura, scultura, musica, teatro, fotografia...), organizzando attività artistiche ed immersive.",
    profile: "fingerprint",
  ),
  FinishGameModel(
    name: "Eco city!",
    imgPath: "assets/finish_game/12.png",
    description: "L'Obiettivo di Sviluppo Sostenibile 12.8 vuole garantire che tutte le persone abbiano le informazioni e la consapevolezza necessarie per uno sviluppo sostenibile e stili di vita in armonia con la natura. 🏘️ 🫂",
    whatYouDo: "🚀 Sensibilizzerai l'opinione pubblica sull'importanza delle comunità e degli stili di vita sostenibili attraverso le esperienze dei volontari, organizzando attività volte a sviluppare e aumentare la comprensione e la conoscenza della vita comunitaria sostenibile.",
    profile: "eco_city",
  ),
  FinishGameModel(
    name: "My self, my world",
    imgPath: "assets/finish_game/17.png",
    description: "L'Obiettivo di Sviluppo Sostenibile 17.16 vuole rafforzare il partenariato globale per lo sviluppo sostenibile, integrato da partenariati multistakeholder che mobilitano e condividono conoscenze, competenze, tecnologie e risorse finanziarie, per sostenere soprattutto i Paesi in via di sviluppo. 💸",
    whatYouDo: "🚀 Svilupperai e proporrai eventi che mettano in contatto i partner attuali e le comunità verso un Obiettivo di Sviluppo Sostenibile che soddisfi le loro esigenze, attraverso attività di gestione dei conti con le parti interessate dei partner esistenti.",
    profile: "my_self_my_world",
  ),
];
