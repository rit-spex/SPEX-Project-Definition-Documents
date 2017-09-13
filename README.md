# SPEX Standard - Project Definition Document
This is an RIT Space Exploration Standard defining guidelines for content and formatting of project definition documents (PDDs).

## When should I use this template?
This document is intended for a member of RIT Space Exploration to bring forward an idea for a project to be conducted under the RIT SPEX banner.

## How do I use this template?
Replace the text in this document with your own information and generate a PDF document by using a LaTeX compiler. For a brief user's guide on using this template and setting up LaTeX on your computer, check [this repository's Wiki](https://github.com/RIT-Space-Exploration/SPEX-Standard-Proposal/wiki).

## Why use LaTeX instead of a regular word processor?
LaTeX is not a word processor. It allows you to write content without worrying about formatting or typesetting -- LaTeX handles all the organization, placement of text, spacing, headings, and so on. It is the de facto standard for technical and scientific documents, and it is beneficial for you to be at least somewhat familiar with using it, especially if you plan to do research in the future. For more about LaTeX, [visit their homepage](https://www.latex-project.org/about/).

## The template is broken or missing something important!
Let us know in the [Issue Tracker](https://github.com/RIT-Space-Exploration/SPEX-Standard-Proposal/issues) so we can fix it!

# What's the purpose of a Project Definition Document?
The intent of a Project Definition Document (PDD) is to organize and document a project idea and its objectives. In the ideal project life cycle, an idea undergoes an initial research phase where a project _Champion_ and their small team develops the primary objectives and requirements. The PDD is a snapshot of the known challenges, risks, and anticipated areas for research at the very start of a project.

## Who should propose a project?
The Champion is the primary author of the definition document and, similar to a Principal Investigator, leads a preliminary team in developing a project idea. The Champion is not necessarily the project manager for a project they propose. Faculty recommendations, advice, and support for a project is not necessary but is strongly encouraged. The Champion is the main point of contact for the PDD. The project's Champion be handed off over time, but a project must always have a Champion.

## Will my PDD be rejected?
PDDs are not approved nor rejected. PDDs are archived, so a definition document that doesn't initially take off may be picked up by a new team somewhere down the line.

## Is my definition document binding?
In the ideal project life cycle, a PDD defines a set of objectives or deliverables which are fulfilled and discussed in a final report or paper. In practice, this is not always the case but an PDD should guide a project such that "feature creep" is avoided and good science is achieved.

## Note
This LaTeX template uses [the IEEE Conference Proceedings LaTeX formatting template](https://www.ieee.org/conferences_events/conferences/publishing/templates.html).

# FAQ
### How to LaTeX?
[LaTeX Quickstart Tutorial](https://github.com/RIT-Space-Exploration/SPEX-Standard-Proposal/wiki/LaTeX-Quickstart-Tutorial) ☕️

### How to LaTeX on PC?
[Setting up your computer to work with LaTeX](https://github.com/RIT-Space-Exploration/SPEX-Standard-Proposal/wiki/Setting-up-your-computer-to-work-with-LaTeX) ☕️ 👌

### How do I make a PDD from this template?
[Read this tutorial!](https://github.com/RIT-Space-Exploration/SPEX-Standard-Proposal/wiki/Creating-a-PDD-from-the-Template)
Start a branch of this repository, then submit a pull request when you're ready for review. All this is in the tutorial.
Don't forget to assign reviewers!

### I wrote my PDD. Now what?
You need to submit it for review so we can make it the best that it can be. This is also covered in the [the tutorial](https://github.com/RIT-Space-Exploration/SPEX-Standard-Proposal/wiki/Creating-a-PDD-from-the-Template#make-a-new-pull-request-pr) as well.

### My bibliography won't show up!
* Make sure you've created a `.bib` file and it's properly formatted! There are examples in the COPY_THIS folder. [sample-formats.bib](https://github.com/RIT-Space-Exploration/SPEX-Standard-Proposal/blob/master/COPY_THIS/sample-formats.bib) [sample-with-examples](https://github.com/RIT-Space-Exploration/SPEX-Standard-Proposal/blob/master/COPY_THIS/sample-with-examples.bib)
* Have you made any citations? Whenever you reference an external work such as a textbook or research paper, you must use the `\cite{your-reference}` command to insert a citation. No matter how many references you have in your `.bib` file, LaTeX only shows the ones you have cited.
* Are you telling LaTeX to make the bibliography? Insert the following commands after your acknowledgements and before your appendix:
```tex
\bibliographystyle{IEEEtran}
\bibliography{YOUR-BIB}
```
(in this example, I have a file called `YOUR-BIB.bib` in the same directory as my `.TeX` file.)

### How do I make nice looking tables?
I'm so glad you asked! [Here's a great style guide to effective and beautiful LaTeX tables](https://www.inf.ethz.ch/personal/markusp/teaching/guides/guide-tables.pdf).

The package `booktabs` is highly recommended. Its usage is also described in the style guide.

### Why is my linter yelling at me over periods and dashes?
Because it matters!
* `-` (hyphen), `--` (en-dash) and `---` (em-dash) are actually different characters and have different uses.
    * Hyphens (`-`) are used for word breaks and hyphenated words like "noise-canceling headphones." Don't worry about this one too much. LaTeX automatically hyphenates word breaks and there's no real "proper" rule for hyphenating words.
    * En-dashes (`--`) are used to delineate ranges like "1991--1995" or "2--3 weeks." Looks goofy in code, but really nice in print.
    * Em-dashes (`---`) are used to place things like interjections---an uncommon grammar device in research papers---in among other parts of a sentence.
    * More info: https://tex.stackexchange.com/questions/3819/dashes-vs-vs
* Spacing is actually handled differently with periods that appear between letters of an abbreviation, after a word like "etc.", or, of course, at the end of a sentence. There are only a couple special cases to worry about, and even then this is only the "proper" usage (but it's optional).
    * [READ THIS FIRST](https://tex.stackexchange.com/questions/99543/exhaustive-list-of-use-cases-for-the-interword-space).
    * Non-breaking space (`~`) - This is used when you don't want two words to be separated if LaTeX wants to push one of them to a new line. It will appear as a space in text, but `these~words` will be handled like one "chunk." Use this one in between first and last names, or between titles and names like `Dr.~John~Smith`
    * Interword space (`\ `) - The Guide to LaTeX (4e) states that \␣ is a "[n]ormal space between words after a command without arguments or after a period that is not the end of a sentence" (p. 467).
    * Intersentence space (`\@`) - [Read this](https://tex.stackexchange.com/questions/55105/when-should-i-use-intersentence-spacing/55112#55112).
