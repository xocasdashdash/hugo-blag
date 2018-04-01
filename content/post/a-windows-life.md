---
title: "A Windows' Life"
date: 2017-10-22T00:00:00+02:00
draft: false

---

For the last 10 years I've been an avid *nix user both for my home life and any job I've had. I took pride in knowing how to avoid being a prisioner of windows even while at Uni when I had to deal with very restrictive environments and programs (Wine is and will always be my friend).

I did have a small netbook with windows 7 on it, worked perfectly as a extremely portable computer to take notes with, but it was no workhorse. 

So I had a decision to make when I got a new computer this past August, do I go with the comfortable solution, getting a laptop on which I would install a *nix environment or try something new!

Lately I've been following docker/container people ([@kelseyhightower](https://twitter.com/kelseyhightower/) ,  [@jessfraz](https://twitter.com/jessfraz/) ) and I had been thinking that if most of the users of the code I write are gonna be working with Windows, shouldn't I go through the same pains when setting up something? 
It really boils down to eating your own dog food and coming down from an Ivory tower so armed with this reasons I decided to get one with Windows and work with it.


### A better desktop experience part I: A new hope

So at first I just wanted to be able to setup the most linuxy like laptop, that meant, getting a nice console like (CMD is not my jam), so after researching a little bit, I found [CMDER](https://github.com/cmderdev/cmder/) which I've been very happy with, still no zsh or oh-my-zsh :(, but it was getting there. Next was the best discovery I've made in quite some time, [chocolatey][choco], which is just awesome, I wish I had known about it before it felt just like when I discovered synaptic that first time I installed Ubuntu 7.10. With this two tools I managed to set a very productive environment (Visual Studio Code is fantastic). 



And it got to the point where I said to myself, this is good, this works. But then....


### A better desktop experience part II: Configuration strikes back

My current job is basically decimating snowflakes. Snowflakes are, to put it simply, systems, servers or applications which have been configured to "work right now". That means that the system is a conglomerate of small changes with fixes, patches which work right now but that in case of a catastrophe (laptop getting stolen) it would take a really long time to get into the same configuration.

In business, this lack of documentation or process repeatibility doesn't get tolerated in almost any context but it is in IT (but I believe this is changing). So it's just bad practice to have this happening on the same computer I wanted to use to slay this snowflakes. 
 
But at this point in time I had everything I needed to fix this situation: 

- [Chocolatey][choco]: It will deal with package mgmt.
- [Powershell][powershell]: It will let me script all of it in a nice repeatable manner.
- All the apps I had been toying with: [Wox](http://www.getwox.com/), [jbs](https://johnsad.ventures/software/backgroundswitcher/), Slack, Whatsapp, Atom, Visual Studio Code...

So now that I had everything I needed to set this up, pretty easy to do with [Boxstarter](http://boxstarter.org/). I found out about it after reading this very nice post by Jessie Frazelle on her blog, ["Windows for linux nerds"](https://blog.jessfraz.com/post/windows-for-linux-nerds/#setting-up-a-windows-machine-in-a-reproducible-way). As you can see from the post just setting up a gist with the required packages is enough to get going (I personally still need to learn A LOT about how windows apps interact with the registry). Anyways, I added the choco packages I wanted and with some more powershell script bits it got going.

In this repo: [@xocasdashdash/personal-configs](https://github.com/xocasdashdash/personal-configs) you can see all the details of the configuration I'm currently running on my laptop with some .vimrc, .gitconfig and some git ignore files that could prove useful to you.  


#### Lessons learned

Well, this trip has helped me understand the way some windows developers I've known work, this has not been an easy project to set up (Still very puzzled by this: [mwrock/boxstarter#291](https://github.com/mwrock/boxstarter/issues/291) but it has been a really rewarding experience that I'm already applying at my job. A coworker ([@a2rones](https://twitter.com/a2rones) ) got a new laptop (Macbook) and with a Brewfile install script it had it working in a fairly reasonable state in less than a day. 

Well, I still need to tune this script to do some more things:

- Link the .gitconfig, .vimrc and others to the specific places.
- Make the file work locally, the gist hack I have to use does not feel very nice and I'd like to define all my apps in just one file.

Anyways I'm very happy for the current state of windows and I feel like the "new" Microsoft is a company that will play much better with the rest of the ecosystem.


[choco]: https://chocolatey.org/
[powershell]: https://github.com/PowerShell/PowerShell
