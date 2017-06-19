9.1 How the Web Works

Release 1: Research Web Servers
1. n phase-0-tracks/web_dev/request_cycle create a Markdown file called web_servers.md. Research the following questions and record your answers in that file.

2. What are some of the key design philosophies of the Linux operating system?
Based on the research articles, I am paraphrasing, "Linux treats everyone equally and allows everyone the maximum amount of power. That is egalitarian. Other operating systems are elitist and exclusive because they withhold or hide their power behind an inflexible Graphical User Interface that allows one to do only what the developers think we should be allowed to do." (https://opensource.com/business/14/12/linux-philosophy).
Essentially, Linux and Unix allow the user to have more control over the computer and system, vs other OS like Windows which has a philosophy of protecting the user from anything that they might do to damage the system.  Windows assumes that people are scared of computers, so they should be protected from the complexities of them.  Linux also offers such protections if desired, but also allows users to have more control if they prefer.

3. In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?  I VPS allows users to code in a virtual environment as if it were actually running locally on your computer.  The advantages are that it will work well on most operating systems as it is virtual.  Also, it can be accessed from other computers simply by logging on.  No need to carry around files.  The drawbacks of it are that it might cost money, could be more difficult to backup locally, and might have a lag time.

4. Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?
Running programs as the root user on any system is illadvised because it could cause permanent irreversible changes which could impact of damage other programs.  There will be times when reading a blog or tutorial, for example why is my postgresql not working, you paste the error mesage and see threads of people with the same problem who fixed it by entering some root level commands in the bash. I would recommend not taking that course of action unless you are absolutely confident of the potential consequences.  In most circumstanes, your problems don't require changing root level configs although at the time it might seem like it is the only way to fix it.


Release 2: Explore the DOM
Find at least five properties (in addition to the ones pointed out in the video) that might be interesting to change once the page is loaded.

attributes[], childNodes[], className, id, firstChild, innerHTML, nodeType, nodeValue
