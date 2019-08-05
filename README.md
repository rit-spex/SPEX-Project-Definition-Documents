# SPEX Standard - Project Definition Document
This is an RIT Space Exploration Standard defining guidelines for content and formatting of project definition documents (PDDs).

This repository includes [the IEEE Conference Proceedings LaTeX formatting template](https://www.ieee.org/conferences_events/conferences/publishing/templates.html) (the SPEX internal standard), a sample document with style guidelines, and an archive of reviewed and approved PDDs.

## When should I use this template?
This document is intended for a member of RIT Space Exploration to bring forward an idea for a project to be conducted under the RIT SPEX banner.

## How do I use this template?
1. Read this Readme in its entirety.
2. Read [the template PDD](COPY_THIS/SPEXpdd.pdf). This document is an example that also explains the intent behind writing a PDD.
3. Create a branch from `master` to start working on your own document.
```
git branch -d my-new-pdd
```
4. Copy the `COPY_THIS` directory, then gut the `.tex` file and replace its contents with your own ideas!
5. When you are ready to see your document as a PDF, compile the `.tex` file. You can do this by installing a LaTeX distribution on your machine or simply running the included script in your terminal.
```
./compile_with_tectonic.sh "./Your-PDD-Folder" "your-main-file.tex"
```
6. When you're ready to have your PDD archived in the `master` branch, [create a Pull Request](https://github.com/RIT-Space-Exploration/SPEX-Project-Definition-Documents/compare) and ask others to review your work!

## But I don't know how to write LaTeX code!
Get the words out first! Use Google Docs, Notepad, Markdown, or pen and paper.
After you have a good grip on what to say in order to communicate your ideas, it is
important to present them clearly and concisely. That's where the PDD template comes in.

Fear not, my apprentice. LaTeX can be tricky to work with, especially when starting out. Lucky for you there is a vibrant TeX community on [stack exchange](https://tex.stackexchange.com/) and across the web. I recommend new users to modify templates, ask lots of questions, and experiment.

Answers to frequently asked questions are found at the [end of this Readme](#how-to-latex).

To jumpstart your path to LaTeX mastery, consider installing [PanDoc](https://pandoc.org/index.html), a lightweight utility for converting text between formats.
```
pandoc my-first-pdd.md -o my-first-pdd.tex
pandoc my-first-pdd.md --from=markdown --output=my-first-pdd.tex --to=latex
```

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

## Should I rewrite my PDD?
Probably not. The purpose of a design document is to capture and preserve the essence of your original idea. In reality, ideas may grow and change over time. If this is the case, it is better to use your old PDD as a template for a new one than to go for a rewrite. On the other hand, it is acceptable to polish and edit a PDD for the sake of clarity and concision, but usually this is done before work has begun on that project. This question lies squarely in the _spirit_ of a PDD, and is thus up to interpretation. Use your best judgement, I trust you.

# How to LaTeX?
[LaTeX Quickstart Tutorial](https://github.com/RIT-Space-Exploration/SPEX-Standard-Proposal/wiki/LaTeX-Quickstart-Tutorial) ☕️

[Begin LaTeX in minutes](https://github.com/LewisVo/Begin-Latex-in-minutes) :fire:

## How to LaTeX on PC?
[Setting up your computer to work with LaTeX](https://github.com/RIT-Space-Exploration/SPEX-Standard-Proposal/wiki/Setting-up-your-computer-to-work-with-LaTeX) ☕️ 👌

## I wrote my PDD. Now what?
You need to submit it for review so we can make it the best that it can be. This is also covered in the [the tutorial](https://github.com/RIT-Space-Exploration/SPEX-Standard-Proposal/wiki/Creating-a-PDD-from-the-Template#make-a-new-pull-request-pr) as well.

## My bibliography won't show up!
* Make sure you've created a `.bib` file and it's properly formatted! There are examples in the COPY_THIS folder. [sample-formats.bib](https://github.com/RIT-Space-Exploration/SPEX-Standard-Proposal/blob/master/COPY_THIS/sample-formats.bib) [sample-with-examples](https://github.com/RIT-Space-Exploration/SPEX-Standard-Proposal/blob/master/COPY_THIS/sample-with-examples.bib)
* Have you made any citations? Whenever you reference an external work such as a textbook or research paper, you must use the `\cite{your-reference}` command to insert a citation. No matter how many references you have in your `.bib` file, LaTeX only shows the ones you have cited.
* Are you telling LaTeX to make the bibliography? Insert the following commands after your acknowledgements and before your appendix:
```tex
\bibliographystyle{IEEEtran}
\bibliography{YOUR-BIB}
```
(in this example, I have a file called `YOUR-BIB.bib` in the same directory as my `.TeX` file.)

## How do I make nice looking tables?
I'm so glad you asked! [Here's a great style guide to effective and beautiful LaTeX tables](https://www.inf.ethz.ch/personal/markusp/teaching/guides/guide-tables.pdf).

The package `booktabs` is highly recommended. Its usage is also described in the style guide.

## Why is my linter yelling at me over periods and dashes?
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
