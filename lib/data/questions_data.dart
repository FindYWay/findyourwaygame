// lib/data/questions_data.dart
import '../models/questionModel.dart';

const List<QuestionModel> allQuestions = [
  QuestionModel(
    question: "Cosa cambieresti del mondo se avessi una bacchetta magica?",
    answers: [
      AnswerModel(
        text: "💭 Aiuterei le persone a stare meglio con sé stesse.",
        profiles: ["heartbeat"],
      ),
      AnswerModel(
        text: "🌱 Farei in modo che tutti rispettino il pianeta.",
        profiles: ["youth_4_impact"],
      ),
      AnswerModel(
        text: "📚 Garantirei ad ogni bambino la possibilità di studiare.",
        profiles: ["global_classroom"],
      ),
      AnswerModel(
        text: "🧠 Eliminerei ogni pregiudizio dalla mente delle persone.",
        profiles: ["raise_your_voice", "equify"],
      ),
      AnswerModel(
        text: "🦩 Proteggerei tutti gli animali.",
        profiles: ["aquatica", "rooted"],
      ),
      AnswerModel(
        text: "🏘️ Modificherei le città: meno traffico e più spazi verdi!",
        profiles: ["eco_city"],
      ),
    ],
  ),
  QuestionModel(
    question: "In quale contesto ti trovi più a tuo agio?",
    answers: [
      AnswerModel(
        text: "👶 Ovunque ci siano bambini!",
        profiles: ["happy_bus"],
      ),
      AnswerModel(
        text: "🌿 Per conto mio nella natura.",
        profiles: ["rooted"],
      ),
      AnswerModel(
        text: "🦈 Immersione tra gli squali!",
        profiles: ["aquatica"],
      ),
      AnswerModel(
        text: "🖼️ Ad un corso di arte o fotografia.",
        profiles: ["fingerprint"],
      ),
      AnswerModel(
        text: "✊ Ad una manifestazione per i diritti umani",
        profiles: ["raise_your_voice", "equify"],
      ),
      AnswerModel(
        text: "💻 In un meeting di lavoro",
        profiles: ["skill_up"],
      ),
    ],
  ),
  QuestionModel(
    question: "Qual è, secondo te, la sfida n.1 del mondo?",
    answers: [
      AnswerModel(
        text: "🗯️ L'aumento del disagio psicologico e psichiatrico tra i giovani.",
        profiles: ["heartbeat"],
      ),
      AnswerModel(
        text: "🪻 La minaccia alle biodiversità.",
        profiles: ["rooted"],
      ),
      AnswerModel(
        text: "💪 Il patriarcato.",
        profiles: ["raise_your_voice"],
      ),
      AnswerModel(
        text: "🖇️ La rivalità tra aziende, governi e cittadini.",
        profiles: ["scale_up"],
      ),
      AnswerModel(
        text: "📱 L'invasione della tecnologia.",
        profiles: ["explorer"],
      ),
      AnswerModel(
        text: "🔥 Il surriscaldamento globale.",
        profiles: ["green_leaders"],
      ),
    ],
  ),
  QuestionModel(
    question: "Che ruolo assumi all'interno di un team?",
    answers: [
      AnswerModel(
        text: "📊 Il leader: organizzo il piano d'azione e affido i compiti.",
        profiles: ["my_self_my_world"],
      ),
      AnswerModel(
        text: "⚖️ Il mediatore: aiuto le persone ad esprimersi e risolvo i conflitti.",
        profiles: ["heartbeat"],
      ),
      AnswerModel(
        text: "🎭 L'innovatore: tiro fuori idee creative e fuori dagli schemi.",
        profiles: ["fingerprint"],
      ),
      AnswerModel(
        text: "🧐 Il preciso: non sopporto si cerchi tutto su Chat GBT!",
        profiles: ["explorer"],
      ),
      AnswerModel(
        text: "💬 Il chiacchierone: distraggo tutti con l'ultimo gossip in città.",
        profiles: ["happy_bus"],
      ),
    ],
  ),
  QuestionModel(
    question: "La tua casa del futuro dovrebbe essere…",
    answers: [
      AnswerModel(
        text: "🏡 Con un grande giardino verde.",
        profiles: ["green_leaders"],
      ),
      AnswerModel(
        text: "🎨 Piena di opere d'arte e pezzi unici.",
        profiles: ["fingerprint"],
      ),
      AnswerModel(
        text: "✈️ Tappezzata di foto dei miei mille viaggi.",
        profiles: ["on_the_map"],
      ),
      AnswerModel(
        text: "🗃️ Invasa dai miei documenti lavorativi.",
        profiles: ["skill_up"],
      ),
      AnswerModel(
        text: "🌊 Non mi interessa: basta sia vicino al mare!",
        profiles: ["aquatica"],
      ),
      AnswerModel(
        text: "🐾 Un piccolo zoo.",
        profiles: ["rooted"],
      ),
    ],
  ),
  QuestionModel(
    question: "Quale superpotere sceglieresti se potessi?",
    answers: [
      AnswerModel(
        text: "🫧 Respirare sott'acqua.",
        profiles: ["aquatica"],
      ),
      AnswerModel(
        text: "👀 Leggere nella mente delle persone.",
        profiles: ["heartbeat"],
      ),
      AnswerModel(
        text: "🦜 Parlare con gli animali.",
        profiles: ["rooted"],
      ),
      AnswerModel(
        text: "🌐 Teletrasporto.",
        profiles: ["on_the_map"],
      ),
      AnswerModel(
        text: "👯‍♂️ Potermi clonare per fare più cose insieme.",
        profiles: ["my_self_my_world"],
      ),
      AnswerModel(
        text: "🫥 Invisibilità.",
        profiles: ["equify"],
      ),
    ],
  ),
  QuestionModel(
    question: "Quale hobby prediligi nel tuo tempo libero?",
    answers: [
      AnswerModel(
        text: "🧘‍♂️ Rilassarmi e prendere del tempo per me.",
        profiles: ["heartbeat"],
      ),
      AnswerModel(
        text: "📚 Studiare.",
        profiles: ["global_classroom"],
      ),
      AnswerModel(
        text: "🖌️ Dipingere.",
        profiles: ["fingerprint"],
      ),
      AnswerModel(
        text: "🐈 Giocare con il mio amico pelosetto!",
        profiles: ["rooted"],
      ),
      AnswerModel(
        text: "📖 Leggere.",
        profiles: ["skill_up"],
      ),
      AnswerModel(
        text: "📉 ... quale tempo libero?",
        profiles: ["my_self_my_world"],
      ),
    ],
  ),
];