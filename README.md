# Skeleton for lecture note taking in LaTeX

To get up and running, do the following. `<class name>` could be 'anatomy,' for
example.

    $ git clone http://github.com/sjktje/latex-notes-skeleton.git <class name>
    $ cd <class name>
    $ vim YYYY-MM-DDa.tex

`YYYY-MM-DDa.tex` contains your lecture notes. If you are attending several
lectures that day, you would name the files `YYYY-MM-DD{a,b}.tex` and so forth.

When done, don't forget to include the file in `main.tex`. Doing so is easy,
just add:

    \input{YYYY-MM-DDa.tex}

At the appropriate spot in your main.tex.

## Localisation

Swedish hyphenation is used by default. If writing in English, you may want to
tell babel about it. Do so by commenting out the current babel line in
`preamble.tex` and adding one appropriate for your language, e.g.:

    %\usepackage[swedish]{babel}
    \usepackage[british]{babel}

## Compiling the document

Assuming you are using Mac OS X or some other Makefile-aware operating system,
just use make:

    $ make viewpdf

If you are using Linux or FreeBSD or similar, you will have to edit the
viewpdf target in the Makefile.

## Using a bibliography

If you need bibliography support, enter your biblatex items into `biblio.bib`
and uncomment the biber line in `Makefile`.

## Resources

 * [Anton Geraschenko's advice on real-time TeXing](http://stacky.net/wiki/index.php?title=Advice_on_real-time_TeXing).
   Anton's website has also got a section where he provides notes from various
   courses.
