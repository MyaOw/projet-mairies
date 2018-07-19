How to send a huge amount of spam to your townhall 
=================================================

We got hired by a company called Get-Mail-Corp, their motto:
>Life is not about receiving the e-mails that you want, the e-mails that you need...
>life is about getting all those spams!

Our mission consists on:

	- Scrapping the addresses
	- Sending those emails
	- Twitting

###Scrapping the adresses
Uses some crazy algorithms to go and get and index of e-mails from all townhalls in Rhône, Loire and Drôme. Then it gets all of those e-mails and stocks them in a JSON file (oh yeah) sorted by:

- E-mail address
- Name of the town
- Name of the county

###Sending those emails
The program sends e-mails like crazy, with the following message:
>Bonjour,
>Nous sommes les Yatsu, élèves à The Hacking Project, une formation au code gratuite, sans locaux, sans sélection, sans restriction géographique.
>La pédagogie de ntore école est celle du peer-learning, où nous travaillons par petits groupes sur des projets concrets qui font apprendre le code.
>Le projet du jour est d'envoyer (avec du codage) des emails aux mairies pour qu'ils nous aident à faire de The Hacking Project un nouveau format d'éducation pour tous.
>Déjà 500 personnes sont passées par The Hacking Project. Est-ce que la mairie de [NOM_COMMUNE] veut changer le monde avec nous ?
>
>Charles, co-fondateur de The Hacking Project pourra répondre à toutes vos questions : 06.95.46.60.80

###Twitting
Social network can be wonderful to spam people. The Get-Mail-Corp told us to write a script that searchs and follow the first result that appears in twitter when you search the name of the townhall. Crazy, right? But they have the money and we need it.

##More seriously:

This is a program that does everything mentionned before, but our team doesn't like getting spammed, so we do NOT spam others either.

To get the program working, this is what you need to do:

###Installation

Clone this repo
```sh
$ git clone https://github.com/MyaOw/projet-mairies
```

Then install all the jewelry
```sh
$ bundle install
```

Run the app file
```sh
$ ruby app.rb
```

You might need to charge your own Twitter and Gmail credentials in the .env file.

```sh
├── app.rb
├── config
│   └── readme.md
├── db
│   ├── scrap.json
│   └── scrap_mairie.json
├── Gemfile
├── Gemfile.lock
├── lib
│   ├── app
│   │   ├── mairie_scrapper.rb
│   │   ├── townhalls_adder_to_db.rb
│   │   ├── townhalls_follower.rb
│   │   ├── townhalls_mailer.rb
│   │   ├── townhalls_scrapper.rb
│   │   └── utils.rb
│   └── views
│       ├── done.rb
│       └── index.rb
└── README.md
```

Licence








