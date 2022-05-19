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

#>  DESTATIS-Schluessel-Staatsangehoerigkeit Suchbegriff Staatsangehoerigkeit Staatsname-kurz                          Staatsname-voll Existenz-ab Existenz-bis ISO-3 ISO-2 Kontinent-kurz Hinweis
#>1                                      423 Afghanistan           afghanisch     Afghanistan      die Islamische Republik Afghanistan        <NA>         <NA>   AFG    AF            ASI   Staat
#>2                                      287     Ägypten            ägyptisch         Ägypten           die Arabische Republik Ägypten        <NA>         <NA>   EGY    EG            AFR   Staat
#>3                                      121    Albanien            albanisch        Albanien                    die Republik Albanien        <NA>         <NA>   ALB    AL            EUR   Staat
#>4                                      221    Algerien            algerisch        Algerien die Demokratische Volksrepublik Algerien  1962-07-05         <NA>   DZA    DZ            AFR   Staat
#>5                                      123     Andorra         andorranisch         Andorra                   das Fürstentum Andorra        <NA>         <NA>   AND    AD            EUR   Staat
#>6                                      223      Angola          angolanisch          Angola                      die Republik Angola  1975-11-11         <NA>   AGO    AO            AFR   Staat


attr(df, "metadaten")

#>$kennung
#>[1] "urn:de:bund:destatis:bevoelkerungsstatistik:schluessel:staatsangehoerigkeit_2022-02-18"
#>
#>$kennungInhalt
#>[1] "urn:de:bund:destatis:bevoelkerungsstatistik:schluessel:staatsangehoerigkeit"
#>
#>$version
#>[1] "2022-02-18"
#>
#>$nameKurz
#>                         value lang
#>1 DESTATIS Staatsangehörigkeit   NA
#>
#>$nameLang
#>                                                                                              value lang
#>1 Codeliste Staatsangehörigkeit aus der Staats- und Gebietssystematik des Statistischen Bundesamtes   NA
#>
#>$nameTechnisch
#>[1] "Staatsangehoerigkeit"
#>
#>$herausgebernameLang
#>                    value lang
#>1 Statistisches Bundesamt   NA
#> ...

attr(df, "spalten")

#>                          spaltennameLang                     spaltennameTechnisch datentyp codeSpalte     code empfohleneCodeSpalte sprache
#>1  DESTATIS Schlüssel Staatsangehörigkeit DESTATIS-Schluessel-Staatsangehoerigkeit   string       TRUE REQUIRED                 TRUE      NA
#>2                             Suchbegriff                              Suchbegriff   string      FALSE REQUIRED                FALSE      NA
#>3                     Staatsangehörigkeit                     Staatsangehoerigkeit   string      FALSE OPTIONAL                FALSE      NA
#>4           Staatsname, amtliche Kurzform                          Staatsname-kurz   string      FALSE OPTIONAL                FALSE      NA
#>5           Staatsname, amtliche Vollform                          Staatsname-voll   string      FALSE OPTIONAL                FALSE      NA
#>6                            Existenz ab:                              Existenz-ab     date      FALSE OPTIONAL                FALSE      NA
#>7                           Existenz bis:                             Existenz-bis     date      FALSE OPTIONAL                FALSE      NA
#>8                            ISO 3stellig                                    ISO-3   string      FALSE OPTIONAL                FALSE      NA
#>9                            ISO 2stellig                                    ISO-2   string      FALSE OPTIONAL                FALSE      NA
#>10                   Kontinent, Abkürzung                           Kontinent-kurz   string      FALSE OPTIONAL                FALSE      NA
#>11                                Hinweis                                  Hinweis   string      FALSE OPTIONAL                FALSE      NA
```


