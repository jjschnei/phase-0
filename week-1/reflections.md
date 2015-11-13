# 1.1 Thinking About Time
I have worked at home for the passed 4 years.  Working without the formal structure of an office environment has forced me to cultivate my productivity skills.  As a result, I consider myself fairly adept at time management.

In this exercise, I researched several time management and productivity ideas including:  meditation, flow states, proper diet, exercise, and getting enough sleep.  One of the tactic that I've yet to be able to implement as a productivity tool is the flow state.  As known as "the zone" or "peak performance", I've experienced flow states in my hobbies but have not been less successful getting into this state while doing work.  For Phase 0, I plan to try some of the techniques that I read about for inducing a flow state:

-Finding the time of day I'm least distracted
-Finding my ideal environment
-Making the work challenging (but not too challenging)
-Getting lost in it

Another strategy I read about is called "Time Boxing".  This is when you set a specific amount of time to complete a task.  I currently use this tactic and plan to continue using it in Phase 0.  I have found that tasks take as much time or as little time as you've scheduled for them.  For example, say I was assigned to write a paper.  If the due date was in a week, it would take me about a week to write it.  If it was due in two hours, I would complete a paper of similar quality in two hours instead of a week.  I plan to apply phenomenon this to Phase 0 -- planning (relatively short) boxes of time to complete tasks.

I plan to try all of the strategies and tactics that I researched in Phase 0.  Many have been useful in boosting my productivity and time management while working at home.  I expect them to continue to be helpful during Phase 0.  Specifically, I plan to continue using the Headspace app to do daily guided meditations.  I will continue to eat a healthy diet and get enough sleep.  Exercise will also be an important component.  One new element will be trying to induce peak performance by getting into a flow state.

# 1.2 The Command Line
A “Shell” is any software that provides an interface with an OS.  You can think of it as a literal shell around the O/S allowing the user to interact with the computer.  A shell can have a GUI or a CLI.  “Bash” is a specific command line interface shell.  Bash is the default command-line shell on OS X. The name Bash stands for “Bash again shell” because Bash was designed to replace Bourne shell.

 The most challenging part for me was getting started.  I didn’t have any context for what a shell or Bash or terminal meant.  I learn best when I understand the broader context that specific material fits within. Watching the video, I felt lost and a bit frustrated.  Once I started using the terminal, I saw it’s similarities to DoS and everything “clicked”.  It was still a challenge to begin memorizing everything, but it was lot easier (not to mention more enjoyable) once I understood how the terminal interacted with my computer.  It was particularly helpful to watch the files change as I manipulated them in the terminal.

 The “Command Line Course” was very helpful.  By following the instructions, I was able to successfully use nearly all of the commands.

 After completing the intro course, it’s clear that I still have a lot to learn about how to use command lines.  It’s hard to know which commands will be most useful as I still don’t know when you would use the terminal instead of the GUI. That said, I think these basic commands will be very helpful no matter what I’m doing:  pwd, cd, ls, find and grep.

Per the instructions, I created written notes and can define the following commands by memory:

pwd – Print working directory.  This command shows you what directory you are in.

ls – List directory.  This shows you the contents of the directory you’re in.

mv – Move directory or file.  You can use this command to move a file/folder or rename a file/folder

cd – Change directory.  You use this command to change folders

../ - The two dots represent the parent directory (the directory above your current directory).  The two dots follow the cd command.  You can use two dots and backslash [../] followed by another directory to go up a directory and then into a different folder within the parent.

touch – This command is used to create, change, and modify timestamps of a file.  Like most commands, it can take a variety of command options.

mkdir – Make directory.  Used to create directories of a file system.

less – used to page through a file.  For example, enter ‘less [file name]’ and the contents of the file will appear in the terminal.  Press ‘space’ to scroll down, ‘w’ to scroll up, and ‘q’ to quit.

rmdir – Remove directory.  Used to remove a directory.  You will get an error if the directory isn’t empty.

rm – Remove.  Used to delete files or directories.

help – The help command opens manual in the terminal that displays many possible commands.  You can use the syntax ‘help [command name]’ to get help with a specific function.

# 1.4 Create, Fork, and Clone Repos
My instructions for creating a new repo, fork a repo, and clone a repo would be very similar to the instructions in the video.  I found them to be easy to follow and concise.  To recap, here they are:

To create a new repo you simply need to click the “new repo” button in the top right drop down menu.

To fork a repo, navigate to the repo you wish to fork on GitHub. Click the fork button.

To then clone your forked repo, make sure that HTTPS is selected, then copy the clone URL.  In your terminal, navigate to the directory you wish to store the repo.  You can use the command pwd to confirm you are in the right folder.  Then type the command:  git clone [paste the URL]

You may need to enter your GitHub username and password (Note that the characters you type will not be visible as you enter your login credentials).

This command will then download the repo. Boom! You just created a repo, forked a repo, and cloned a repo. In plain English:  You created a new project, made a copy of an existing project to your hosted GitHub account, and then downloaded the project from GitHub to your personal computer.

My main struggle was conceptualizing how Git, GitHub, Sublime and my terminal all interact.  As outlined in my above instructions, I learned how to create a new repo, fork a repo, and clone a repo.  I’m still need a bit more review on how Sublime works. I learned how to connect my terminal to Sublime (something to do with adding the path to Bash), but I would like to dive deeper into actually using Sublime.
