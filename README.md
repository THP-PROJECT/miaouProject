![Logo](app/assets/images/logo.png)

# Bienvenue sur le site de vente de photos de chat !

À propos du projet
Ce projet a été créé avec enthousiasme par Jean-Baptiste Faria, Mathieu Strosberg et William Doré. Notre objectif est de vous offrir une expérience unique en vous proposant une sélection exceptionnelle de photos de chats. Nous croyons fermement que les chats sont une source de réconfort et de bonheur, et nous voulons partager cette joie avec vous à travers nos superbes photographies.

# Contribuer

Nous sommes ravis de recevoir des contributions pour améliorer notre site de vente de photos de chat. Si vous souhaitez contribuer, veuillez suivre les étapes suivantes :

Forker le repository
Créez une nouvelle branche pour vos modifications : git checkout -b ma-nouvelle-fonctionnalite
Effectuez vos modifications
Validez vos modifications : git commit -m "Ajouter une nouvelle fonctionnalité"
Poussez vos modifications vers votre fork : git push origin ma-nouvelle-fonctionnalite
Créez une Pull Request dans notre repository principal

# Contact

Si vous avez des questions ou des commentaires, n'hésitez pas à nous contacter :

- [@Jean-baptiste](https://www.github.com/Jakfamily)
- [@Mathieu](https://www.github.com/mathieustroberg)
- [@William](https://www.github.com/williamdore)
- [@Olivier](https://www.github.com/Rochaya)

# Installation

Pour commencer, clonez notre repository GitHub en utilisant la commande suivante :

`git clone <lien du repository>`

Assurez-vous d'avoir Ruby et Ruby on Rails installés sur votre machine. Ensuite, exécutez les commandes suivantes pour installer les dépendances et configurer la base de données :

`$ bundle install`

`$ rails db:setup `

`$ rails db:create`

`$ rails db:migrate`

`$ rails db:seed`

Démarrage du serveur
Une fois les dépendances installées et la base de données configurée, vous pouvez démarrer le serveur Rails en utilisant la commande suivante :

`$ rails server `

Ensuite, ouvrez votre navigateur et accédez à l'URL suivante : http://localhost:3000

## Utilisation

Lancez ma console:

`$ rails console`

`user = User.create!(firstname: "Jojo", lastname: "la frite", is_admin: true, email: "isadmin@admin.com", password: "password", address: "Paris", zipcode: "75000")`

`user.save`

Munissez-vous des identifiants administrateurs (identifiant : isadmin@admin.com, mdp: password) afin d'accedez aux fonctionnalités du site administrateur en vous connectant.

## Technologies utilisées ⚙️

<p align="left">Pour ce programme les technologies suivantes ont été utilisé : <br>
<a href="https://www.w3.org/html/" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/html5/html5-original-wordmark.svg" alt="html5" width="40" height="40"/> </a>
<a href="https://www.w3schools.com/css/" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/css3/css3-original-wordmark.svg" alt="css3" width="40" height="40"/> </a>
<!--
<a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/javascript/javascript-original.svg" alt="javascript" width="40" height="40"/> </a>
-->
<a href="https://getbootstrap.com" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/bootstrap/bootstrap-plain-wordmark.svg" alt="bootstrap" width="40" height="40"/> </a>
<a href="https://rubyonrails.org" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/rails/rails-original-wordmark.svg" alt="rails" width="40" height="40"/> </a>
<a href="https://www.ruby-lang.org/en/" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/ruby/ruby-original.svg" alt="ruby" width="40" height="40"/> </a>
<a href="https://www.postgresql.org" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/postgresql/postgresql-original-wordmark.svg" alt="postgresql" width="40" height="40"/> </a>
<a href="https://heroku.com" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/heroku/heroku-icon.svg" alt="heroku" width="40" height="40"/> </a>
<a href="https://git-scm.com/" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/git-scm/git-scm-icon.svg" alt="git" width="40" height="40"/> </a>
</p>

## License

Ce projet est sous licence [MIT](https://choosealicense.com/licenses/mit/). Pour plus d'informations, consultez le fichier LICENSE.

Nous vous remercions de votre intérêt pour notre site de vente de photos de chat. Nous espérons que vous apprécierez explorer notre collection et que vous trouverez des photos qui vous apporteront beaucoup de réconfort et de bonheur !
