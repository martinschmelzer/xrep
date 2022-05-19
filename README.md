# R Schittstelle zu www.xrepository.de

Beispiel: Download der DESTATIS Staatsangehörigkeiten

1. Aktuelle Version der Codeliste ermitteln

```
id <- "urn:de:bund:destatis:bevoelkerungsstatistik:schluessel:staatsangehoerigkeit"
valid_version_id <- getValidVersion(id)
```

2. Aktuelle Version der Codeliste herunterladen

```
df <- getData(valid_version_id, simplify = T)  # get data.frame

head(df)

  DESTATIS-Schluessel-Staatsangehoerigkeit Suchbegriff Staatsangehoerigkeit Staatsname-kurz                          Staatsname-voll Existenz-ab Existenz-bis ISO-3 ISO-2
1                                      423 Afghanistan           afghanisch     Afghanistan      die Islamische Republik Afghanistan        <NA>         <NA>   AFG    AF
2                                      287     Ägypten            ägyptisch         Ägypten           die Arabische Republik Ägypten        <NA>         <NA>   EGY    EG
3                                      121    Albanien            albanisch        Albanien                    die Republik Albanien        <NA>         <NA>   ALB    AL
4                                      221    Algerien            algerisch        Algerien die Demokratische Volksrepublik Algerien  1962-07-05         <NA>   DZA    DZ
5                                      123     Andorra         andorranisch         Andorra                   das Fürstentum Andorra        <NA>         <NA>   AND    AD
6                                      223      Angola          angolanisch          Angola                      die Republik Angola  1975-11-11         <NA>   AGO    AO
  Kontinent-kurz Hinweis
1            ASI   Staat
2            AFR   Staat
3            EUR   Staat
4            AFR   Staat
5            EUR   Staat
6            AFR   Staat


attr(df, "metadaten")

$kennung
[1] "urn:de:bund:destatis:bevoelkerungsstatistik:schluessel:staatsangehoerigkeit_2022-02-18"

$kennungInhalt
[1] "urn:de:bund:destatis:bevoelkerungsstatistik:schluessel:staatsangehoerigkeit"

$version
[1] "2022-02-18"

$nameKurz
                         value lang
1 DESTATIS Staatsangehörigkeit   NA

$nameLang
                                                                                              value lang
1 Codeliste Staatsangehörigkeit aus der Staats- und Gebietssystematik des Statistischen Bundesamtes   NA

$nameTechnisch
[1] "Staatsangehoerigkeit"

$herausgebernameLang
                    value lang
1 Statistisches Bundesamt   NA

$herausgebernameKurz
     value lang
1 DESTATIS   NA

$beschreibung
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   value
1 Codeliste Staatsangehörigkeit. Tabelle von Staaten und Staatsangehörigkeiten. Enthält alle Einträge der Codeliste Staat (eigenständige, von Deutschland diplomatisch anerkannte derzeitige Staaten) und zusätzlich Einträge für ehemalige Staaten sowie Ersatzwerte. Die Liste enthält auch einen Eintrag für die Palästinensischen Gebiete. Enthalten sind alle Staaten im vollen politischen Sinne, z.B. Frankreich, Italien, Vereinigtes Königreich, nicht aber: britische Jungferninseln, Jersey sowie alle früheren Staaten seit 1970, z.B. Sowjetunion. Neben den amtlichen Bezeichnungen (Kurzform und Vollform) und der Staatsangehörigkeit als Adjektiv/Adverb ist auch der jeweilige ist auch der jeweilige Suchbegriff aus dem Länderverzeichnis des Auswärtigen Amtes aufgeführt (der Suchbegriff ist eine griffige Bezeichnung des Staates). Die Angaben umfassen zudem den numerische Destatis-Code für Staatsangehörigkeit und Staat den 2- und 3-stelligen alphabetischen ISO 3166-1 Code sowie ggf. das Datum der Selbständigkeit bzw. Gründungsdatum nach den Angaben des Auswärtigen Amtes und das Auflösungs- bzw. Enddatum als berechnete Angabe aus dem Gründungsdatum des/der Nachfolgestaaten.
  lang
1   NA

$versionBeschreibung
list()

$aenderungZurVorversion
                                                                                                                                                                          value
1 Änderungen in der Version 2022-02-18: Der Eintrag "Weißrussland" wurde durch "Belarus" ersetzt. Redaktionelle Änderungen in der Spalte "Staatsangehoerigkeit" bzgl. Code 144.
  lang
1   NA

$handbuchVersion
[1] "1.0"

$xoevHandbuch
[1] FALSE

$gueltigAb
[1] 1.640992e+12

$bezugsorte
[1] "https://www.destatis.de/DE/Methoden/Klassifikationen/Staat-Gebietsystematik/staatsangehoerigkeit-gebietsschluessel.html"


attr(df, "spalten")

                          spaltennameLang                     spaltennameTechnisch datentyp codeSpalte     code empfohleneCodeSpalte sprache
1  DESTATIS Schlüssel Staatsangehörigkeit DESTATIS-Schluessel-Staatsangehoerigkeit   string       TRUE REQUIRED                 TRUE      NA
2                             Suchbegriff                              Suchbegriff   string      FALSE REQUIRED                FALSE      NA
3                     Staatsangehörigkeit                     Staatsangehoerigkeit   string      FALSE OPTIONAL                FALSE      NA
4           Staatsname, amtliche Kurzform                          Staatsname-kurz   string      FALSE OPTIONAL                FALSE      NA
5           Staatsname, amtliche Vollform                          Staatsname-voll   string      FALSE OPTIONAL                FALSE      NA
6                            Existenz ab:                              Existenz-ab     date      FALSE OPTIONAL                FALSE      NA
7                           Existenz bis:                             Existenz-bis     date      FALSE OPTIONAL                FALSE      NA
8                            ISO 3stellig                                    ISO-3   string      FALSE OPTIONAL                FALSE      NA
9                            ISO 2stellig                                    ISO-2   string      FALSE OPTIONAL                FALSE      NA
10                   Kontinent, Abkürzung                           Kontinent-kurz   string      FALSE OPTIONAL                FALSE      NA
11                                Hinweis                                  Hinweis   string      FALSE OPTIONAL                FALSE      NA
```


