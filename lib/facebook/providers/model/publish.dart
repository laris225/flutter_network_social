class Publish {
  final String profil, profil2, nom, groupe, date, description, photo;
  final List<Comment> commentaires;
  final List<Reply> reponse;
  Publish(
      {this.profil,
      this.profil2,
      this.nom,
      this.groupe,
      this.date,
      this.description,
      this.photo,
      this.commentaires,
      this.reponse});
}

class Comment {
  final String profil_comment, msg_comment;
  Comment({this.profil_comment, this.msg_comment});
}

class Reply {
  final String profil_reply, msg_reply;
  Reply({this.profil_reply, this.msg_reply});
}
