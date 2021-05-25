class ParticipationMailer < ApplicationMailer
  default from: "queau.j@gmail.com"

  def participate_email(user, participation)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user
    @participation = participation
    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url = "http://monsite.fr/login"

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: "Bienvenue chez nous !")
  end
end
