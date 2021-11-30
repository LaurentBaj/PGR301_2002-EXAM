# PGR301-2002-EKSAMEN

## Oppgave – Devops

Det er hensiktsmessig å fordele ansvaret av arbeidet opp mot programvaren. En vanlig arbeidsflyt med Github innebærer at man har en gren som betraktes som resultatet av alle bidrag, også kalt Main. Man antar at denne grenen kompilerer (uten feil) og er klar til å bli tilpasset der den sendes til (produkteier, Play Store, App Store).
Utviklingsprosessen består av at endringer utføres i en separat gren, hvor én eller flere, utvikler en feature som kan (etter evaluering) smeltes inn i Main. Hver gang man skal legge til noe nytt så forsikrer utviklerne seg om at de har hentet inn de siste oppdateringene fra Main før de avgreiner seg og sender koden til vurdering. Tar det dager/uker før en feature fullføres så bryter dette med «Lean-Development» og Main kan ha endret seg. I en slik situasjon kan utvikler hente de nye oppdateringene fra Main og smelte det inn i sin feature-gren før det lages en pull-request.

I en profesjonell setting så vil testing og build-ing være involvert hver gang en ny feature utvikles. Det er vanlig å lage en «pipeline», altså en skjede av prosesser som som kjøres automatisk for å validere og bygge den nye koden som skal merges i Main. CI/CD-verktøy blir brukt for å lage en slik livssyklus til utviklingsprosessen.
Github Actions er et slik verktøy som kan tilpasses prosessen ved at man definerer i en yml/yaml-fil med hvilke steg som må utføres hver gang det lages et nytt request. Verktøyet lager en rapport for hele prosessen og hvordan det gikk med hvert steg i Pipeline-en, i tillegg til å godkjenne/avslå en request.
Det er også mulig å definere hvilke prosesser bidragsytere må gjennom for å få godkjent en pull-request på Github. Dette er mulig ved å legge til krav kalt «Branch-proteciton-rules» hvor man kan feks... bare krever en status-check fra Actions, eller kreve at administrator selv må godkjenne hver request.


## Skalbank

Måten Skalbank jobber ligner på en pre-agile arbeidsmåte. Deres testavdeling, Team Dino, har ikke kontakt med utviklerne før hver release. Når en større modul lanseres er det vanskelig å detektere hvor feilene ligger, noe som forårsaker blaimstorming når ingen får løst problemet. Dette fører videre til dårlig læringskultur fordi utvikling/testing blir en risikosport. Disse er konsekvenser av at Skalbank ikke følger lean-development-principles.


Oppgave Feedback

Fikk ikke til å legge til å definere metrics i grafana. Jeg følger videoen og stegene definert i rep 8 men får svar: «Network Error: Bad Gateway(502)» når jeg skal lage en Data Source. Koden som skulle registrere dem er kommentert ut slik at applikasjonen fremdeles kan kjøres.


## Oppgave Terraform – Jens sin Feilmelding

Ut ifra feilmeldingen virker det slik at ’’’terraform apply’’’ ikke bare tilpasser de nye endringene Jens har gjort, men prøver å lage en ny S3-bucket. Den fungerte første gangen fordi verken han (eller noen andre) hadde en bucket med det navnet.

## AWS CLI

Når repository-et forkes kan man legge til egen Access Key ved å skrive ’’’aws configure’’’ deretter hente nøkkelen ved å gå på Security Credentials på sin egen AWS-bruker. Det er mulig å legge til denne informasjonen i secrets på Github Actions.


## S3, ECR OG ACTIONS

Jeg har en bucket og et repo på ECR, men jeg fikk ikke til å løse oppgavene. Forsøkene mine på å få det til er kommentert ut.

Det er mulig å legge til ’hemmeligheter’ i repo-et ved at man trykker på settings -> secrets og deretter trykke på ’New Repository Secrets’. Der kan man legge til navn og verdi på hemmeligheten.

## Oppgave Docker

- For å bygge et docker-image så kan man skrive: ```docker build .``` i prosjektmappen.
- For å starte en container som lytter på port 7777 så skriver man:
  ```docker run -p 7777:80 image-navn```
- Usikker om jeg forstår spørsmålet men:
  - Man kan kjøre forskjellige images så lenge de ikke bruker samme port
  - Om man kjører kommandoen over bare at man peker på forskjellige porter så skal det 		  fungere





