How to send a huge amout of spam to your townhall 
=================================================

We got hire by a company call Get-Mail-Corp, their moto:
>Life is not about receiving the email that you want, the mail that you need..
>life is about getting all those spams.

In our contract they told us to do  with 3 parts:

	- Scrapping the adress
	- Sending those emails
	- Twitting

###Scrapping the adress
Uses some crazy algorithms to go and get and index of email from all townhalls in the region of RHONE. Then it gets all of those emails and stocks it in a JSON file (oh yeah) arrange by:

- Email
- Name of the town
- And the number of the department


###Sending those emails
The program send emails like crazy, it says something like this:
>Bonjour,
>Je m'appelle [PRÉNOM], je suis élève à The Hacking Project, une formation au code gratuite, sans locaux, sans sélection, sans restriction géographique.
>La pédagogie de ntore école est celle du peer-learning, où nous travaillons par petits groupes sur des projets concrets qui font apprendre le code.
>Le projet du jour est d'envoyer (avec du codage) des emails aux mairies pour qu'ils nous aident à faire de The Hacking Project un nouveau format d'éducation pour tous.
>Déjà 500 personnes sont passées par The Hacking Project. Est-ce que la mairie de [NOM_COMMUNE] veut changer le monde avec nous ?
>
>Charles, co-fondateur de The Hacking Project pourra répondre à toutes vos questions : 06.95.46.60.80

###Twitting
Social network can be wonderfull, to spam people. The Get-Mail-Corp told as to write a script that searchs and follow the first result that appears in twitter when you search the name of the townhall. Crazy, right? But they have to money and we need it.

##More seriously:

This a program that does everything that its mentions before, but our team don't like getting spammed, so we dont spam others neither.

To get the program working this is what you need to do:

###Installation

Clone this repo
```sh
$ git clone https://github.com/MyaOw/projet-mairies
```

Then install all the jewlery
```sh
$ bundle install
```

Run the app file
```sh
$ ruby app.rb
```

You might need to charge your own Twitter credentials in the .env file. In case you dont have them we will provided for you.

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










