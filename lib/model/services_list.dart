//here we will write the service data model class

class PrestataireService {
  String? nom;
  String? prenom;
  String? mail;
  String? serviceRendue;
  String? shortDescription;
  int? anneeDexperience;
  int? numero;
  int? dateDeNaissance;
  double? rating;
  PrestataireService(
      this.prenom, this.shortDescription, this.serviceRendue, this.rating) {}
}

List<PrestataireService> listDesPrestataires = [
    PrestataireService("test5", "images/tutor.jpg", "Batteur", 3.8),
    PrestataireService(
        "test6", "images/tutor.jpg", "Pentration Testing", 4.2),
    PrestataireService("Yves", "images/tutor.jpg", "Pasteur", 4.2),
    PrestataireService(
        "test7", "images/tutor.jpg", "Professeur", 4.5),
    PrestataireService(
        "test", "images/tutor.jpg", "Professeur", 2.0),
    PrestataireService(
        "test1", "images/tutor.jpg", "Docteur", 3.4),
    PrestataireService(
        "test2", "images/tutor.jpg", "Architecte", 4.1),
    PrestataireService(
        "test3", "images/tutor.jpg", "Professeur", 1.3),
    PrestataireService(
        "test4", "images/tutor.jpg", "Vendeuse", 3.3),
    PrestataireService(
        "test5", "images/tutor.jpg", "Livreur", 2.0),
    PrestataireService(
        "test5", "images/tutor.jpg", "Batteur", 3.8),
    PrestataireService(
        "test5", "images/tutor.jpg", "Livreur", 2.0),
    PrestataireService("Yves", "images/tutor.jpg", "Pasteur", 2.2),
    PrestataireService(
        "test5", "images/tutor.jpg", "Livreur", 2.0),
    PrestataireService(
        "test7", "images/tutor.jpg", "Professeur", 4.5),
    PrestataireService(
        "test5", "images/tutor.jpg", "Livreur", 2.0),
    PrestataireService(
        "test3", "images/tutor.jpg", "Professeur", 1.3),
    PrestataireService(
        "test2", "images/tutor.jpg", "Architecte", 4.1),
    PrestataireService(
        "test3", "images/tutor.jpg", "Professeur", 1.3),
    PrestataireService(
        "test7", "images/tutor.jpg", "Professeur", 4.5),
    PrestataireService(
        "test3", "images/tutor.jpg", "Professeur", 1.3),
    PrestataireService(
        "test4", "images/tutor.jpg", "Vendeuse", 3.3),
    PrestataireService(
        "test2", "images/tutor.jpg", "Architecte", 4.1),
    PrestataireService(
        "test4", "images/tutor.jpg", "Vendeuse", 3.3)
  ];



  