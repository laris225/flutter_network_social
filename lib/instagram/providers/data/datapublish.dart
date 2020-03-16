import '../model/publish.dart';

List<Publish> listpublish = [
  Publish(
      profil: "images/1.png",
      nom: "Laris",
      date: "il y'a 10:12",
      photo: "images/8.png",
      commentaires: [
        Comment(
          nom_comment: "Jessica",
          msg_comment: "Je vais bien, 2 jours hein",
          profil_comment: "images/3.png",
        ),
        Comment(
          nom_comment: "Eric225",
          msg_comment: "bien et chez toi ?",
          profil_comment: "images/4.png",
        ),
      ],
      reponse: [
        Reply(
          msg_reply: "Merci de penser à nous",
          profil_reply: "images/1.png",
        ),
      ]),
  Publish(
      profil: "images/2.png",
      nom: "Ines",
      date: "il y'a 12:17",
      photo: "images/6.png",
      commentaires: [
        Comment(
          nom_comment: "Davy",
          msg_comment: "Merci pour ton message",
          profil_comment: "images/3.png",
        ),
        Comment(
          nom_comment: "Prunelle",
          msg_comment: "Vient chez moi, j'ai un bon plan pour toi",
          profil_comment: "images/2.png",
        ),
      ],
      reponse: [
        Reply(
          msg_reply: "Ah voilà!",
          profil_reply: "images/1.png",
        ),
        Reply(
          msg_reply: "Attend moi je suis en route",
          profil_reply: "images/1.png",
        ),
      ]),
  Publish(
      profil: "images/3.png",
      nom: "Domi",
      date: "il y'a 11:08",
      photo: "images/7.png",
      commentaires: [
        Comment(
          nom_comment: "Sydney",
          msg_comment: "Merci pour tout !",
          profil_comment: "images/4.png",
        ),
      ],
      reponse: [
        Reply(
          msg_reply: "Merci, c'est gentil",
          profil_reply: "images/1.png",
        ),
      ]),
  Publish(
      profil: "images/4.png",
      nom: "Davy",
      date: "il y'a 17:42",
      photo: "images/8.png",
      commentaires: [
        Comment(
          nom_comment: "Laris",
          msg_comment: "Merci à vous",
          profil_comment: "images/4.png",
        ),
        Comment(
          nom_comment: "Parrain",
          msg_comment: "Merci à vous",
          profil_comment: "images/3.png",
        ),
        Comment(
          nom_comment: "Ghost",
          msg_comment: "Merci à vous",
          profil_comment: "images/2.png",
        ),
      ],
      reponse: [
        Reply(
          msg_reply: "Merci de penser à nous",
          profil_reply: "images/1.png",
        ),
      ]),
];
