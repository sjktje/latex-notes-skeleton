# Skeleton for lecture note taking in LaTeX

To get up and running, do the following. <class name> could be 'anatomy,' for
example.

    $ git clone http://github.com/sjktje/latex-notes-skeleton.git <class name>
    $ cd <class name>
    $ vim YYMMDD.tex

`YYMMDD.tex` contains your lecture notes. If you are attending several
lectures that day, you could name the file `YYMMDD{a,b}.tex` and so forth.

When done, don't forget to include the file in `main.tex`. Doing so is easy,
just add:

    \input{YYMMDD.tex}

At the appropriate spot in your main.tex.

## Compiling the document

Assuming you are using Mac OS X or some other Makefile-aware operating system,
just use make:

    $ make viewpdf

If you are using Linux or FreeBSD or similar, you will have to edit the
viewpdf target in the Makefile.

## Using a bibliography

If you need bibliography support, enter your bibtex items into `biblio.bib`
and uncomment the bibtex line in `Makefile`.
