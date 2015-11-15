#1.5 Tracking Changes
-How does tracking and adding changes make developers' lives easier?
-What is a commit?
-What are the best practices for commit messages?
-What does the HEAD^ argument mean?
-What are the 3 stages of a git change and how do you move a file from one stage to the other?
-Write a handy cheatsheet of the commands you need to commit your changes?
-What is a pull request and how do you create and merge one?
-Why are pull requests preferred when working with teams?

Tracking changes helps for several reasons.  If you make a mistake, it allows you to go back to a previous version of your code before you made the mistake. It also shows who made the changes and their notes about why they made them.  This is helpful when working on teams.  You can go back and ask people about their code.

A commit is like an official save point for your code.  A commit acts as an official record or snapshot of your work history.


The first line of commit messages should be short (50 character soft limit).    The body message can be longer.  Everything should be written using the imperative, present tense.  The message should include the motivation for the change and contrast it with what it is replacing.


The HEAD^ is used if you decide that you want to make changes to files after you've committed them (here's the full command:  git reset --soft HEAD^). HEAD referes to the commit you are currently on.  Adding the carrot references the last commit.  You can go further back with this syntax:  HEAD~3, HEAD~4, etc.


The three stages of a git change are:  working directory, staging area, and git repository.  You start by either creating a new file in your working directory or downloading one from an existing git repository.  You can then work on the files in your local working directory.  When you are finished working on them (or would like to save aka commit), you use the command ‘git add .’ to stage your changes.  You can then commit your changes to git.  Finally you can push these changes to the remote branch (i.e. GitHub).


Commit Cheat Sheet:
git commit -m “Your commit message”
This command tells Git that you have made changes and in between the quotes is where you tell Git what you did.
git push
When you are ready to share your changes with others, git push pushes the changes to a remote branch such as Github or a cloud hosting service for deployment.


A pull request is a method for submitting contributions to a development project.  Once you’ve pushed your code to GitHub, you can then make a pull request. This will alert interested parties and they can review your code.   Once they’ve reviewed it, they can approve it on GitHub.


Pull requests are preferred with teams because the process allows team members to review your changes, discuss modifications, and make their own changes.
