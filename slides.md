% Du markdown au beamer
% Romain Vimont (®om)
% 15 février 2014

# Pourquoi ?

## Parce que

- Le code source est lisible
- Il est *git*able
- Le résultat est le même que *Beamer*

## Du code

La coloration de code est très simple.

### Un Hello World!

~~~java
public static void main(String... args) {
    System.out.println("Hello world!");
}
~~~

## Du code numéroté

~~~{.c .numberLines startFrom="5"}
int main(int argc, char *argv[]) {
  printf("Hello world!\n");
  return 0;
}
~~~

## Des énumérations

- Apache
- BSD
- GPL
    - GPLv2
    - GPLv3
- MIT

## Des listes numérotées

1. Récupérer le projet
2. Installer `pandoc`
3. Installer les dépendances
    a. `texlive-latex-base`
    b. `latex-beamer`
4. Installer un lecteur (`impressive`)
5. `make run`

## Des citations

Celle-ci est de [*Mitch Resnick*](https://en.wikipedia.org/wiki/Mitchel_Resnick).

> If you learn to read, you can then read to learn.\
> If you learn to code, you can then code to learn.[^ted]

[^ted]: \tiny http://www.ted.com/talks/mitch\_resnick\_let\_s\_teach\_kids\_to\_code.html

## Des apparitions

Par étapes :

> - d'abord…
> - ensuite…
> - enfin…

## D'autres apparitions

D'abord un paragraphe…

. . .

Puis un autre

*(ça ne marche pas avec pandoc 1.9.4.2, mais ça marche avec 1.12.2.1, vérifiez
votre version)*

## Mise en forme

| Il y a 2 types de personnes :
|   ceux qui comprennent la récursivité et
|   ceux qui ne comprennent pas qu'il y a 2 types de personnes :
|     ceux qui comprennent la récursivité et
|     ceux qui ne comprennent pas qu'il y a 2 types de personnes :
|       ceux qui comprennent la récursivité et
|       ceux qui…


# Spécial \LaTeX /Beamer

## Du spécifique

Certaines choses n'existent pas nativement en *Pandoc Markdown*, il suffit donc
d'utiliser du \LaTeX.

## Des blocks spécifiques

\begin{alertblock}{Alerte}
Ceci est une alerte
\end{alertblock}

\begin{exampleblock}{Exemple}
Ceci est un exemple
\end{exampleblock}

## Images

Les images sont supportées par *Markdown*, mais on ne peut pas spécifier la
taille. Il est donc pratique d'utiliser directement \LaTeX.

----

\center\includegraphics[height=6.5cm]{croissance.jpg}

## Des maths

Avec des formules :

$$
\frac{\pi}{4}=\int_0^1 \sqrt{1-x^2}\mathrm dx
$$

# À vous

## Essayez

    sudo apt-get install pandoc \
                         texlive-latex-base \
                         texlive-latex-extra \
                         texlive-lang-french \
                         latex-beamer \
                         impressive
    git clone http://git.rom1v.com/mdbeamer.git
    cd mdbeamer
    make run

## Adaptez

----------- ----------------------------
  la source \code{slides.md}

   le thème \code{beamerthemeCustom.sty}
----------- ----------------------------

## Un thème en 2 minutes

Définissez vos 3 couleurs :

\scriptsize

~~~latex
\definecolor{Color1}{HTML}{25567B}
\definecolor{Color2}{HTML}{033E6B}
\definecolor{Color3}{HTML}{66A3D2}
~~~

\normalsize

Changez les logos :

\scriptsize

~~~latex
\titlegraphic{\includegraphics[height=1.5cm]{avatar.png}}
\logo{\includegraphics[height=1.5cm]{gnulogo.png}}
~~~

# Voir aussi

## Des liens

\scriptsize

pandoc
  ~ <http://johnmacfarlane.net/pandoc/demo/example9/pandocs-markdown.html>
pour beamer
  ~ <http://johnmacfarlane.net/pandoc/demo/example9/producing-slide-shows-with-pandoc.html>
en français
  ~ <http://enacit1.epfl.ch/markdown-pandoc/>
