--- 
title: 'Account Security - In-depth'
parent: Chapter 2 - The Internet
layout: page
nav_order: 11
---

Account Security
================

The digital world is a dangerous place. There are agents working to compromise secure systems every minute of every day. Sometimes, we don't even know when a system has been compromised until it is too late. For our purposes, we are not concerned with enterprise-level cybersecurity. As an apps class, we are mostly interested in how to protect ourselves as end users. That said, we may also want to look at and think critically about some more detailed security principles and take some time to examine some best practices.

Let's start with some principles that are often misunderstood.

Shared Secrets
--------------

When we log onto a website, what are we actually trying to do? What does "logging on" mean? The process of logging on is more accurately called **authentication**. Authentication, as the name implies, is essentially the act of proving your authenticity. That is, proving that you are who you say you are. By far the most common way of accomplishing this is by establishing some shared secret knowledge between yourself and the service at the time that you create the account. We make the assumption that when you create the account, you *are* you. So for that first session, you are typically automatically authenticated. Obviously you are you because you are trying to create that account. So how does the service ensure that you are you the next time you try to access it? Well, when you first create the account, you exchange some shared secret knowledge with the server. You say, "Here's some secret word or phrase that I will use next time I come here." The server takes this shared secret knowledge and stores it in a secure way using a special function called a hash function and the next time you try to authenticate yourself, you must supply the same secret knowledge, which is then passed through the same hash function and compared with their stored value.

The cybersecurity term for this kind of authentication is **shared secret**. We know them colloquially as "passwords" or "passphrases". And there is a lot of conflicting wisdom about how passwords should be created, used, and changed. Let's look at some interesting examples of password wisdom.

Norton, a cybersecurity and malware protection company, has published [a set of guidelines](https://us.norton.com/internetsecurity-how-to-cyber-security-best-practices-for-employees.html) for cybersecurity as an employee of a company. The whole article is worth reading and analyzing critically, but item number 3 is about password security. Here's an outline of the advice they offer.

* At least 10 characters
* Should include numbers, symbols, upper and lower case letters
* You should change passwords on a regular basis
* Using a password manager is advised
* Multi-factor authentication is advised

Think about these suggestions for a moment and then let's examine the password security guidelines from the National Institute of Standards and Technology. Their most famous document of standards for cybersecurity is Special Publication 800-63B (catchy title huh?). In particular, we are interested in [Appendix A](https://pages.nist.gov/800-63-3/sp800-63b.html#appA). The appendix is short very readable and I want you to take a moment, right now, to read it. Don't worry about the complicated terms like "hash" and "salt" and what those mean. Instead focus on the concrete advice for users. Go ahead. I'll wait.

### Password length

Now, let's compare what we just read with the Norton password advice. Some of it matches up. But some of it does not. Let's see where they disagree. First, let's talk about length. Norton says we should have passwords that are at least 10 characters long. NIST says that user-chosen shared secrets should be at least 8 characters. But NIST *also* says that length is the most important factor and the longer the better. These NIST guidelines are aging slightly and recent research has shown that 8 character passwords are very easy to break these days. So, 10 or more is not a bad idea to shoot for.

### Password characters

What about numbers, symbols, and character cases? Norton strongly comes down in support of increasing complexity by having passwords that include special characters and numbers. But what are NIST's criticisms of this practice? There are two big ones. First, research shows that they are not *that* much more secure. And second, they encourage bad practices. If my password is "ilovepie" and my company has instituted a character policy like the one Norton advises, almost every time, I will probably just change my password to "Ilovepie1!" to fulfill the requirement. This has an almost negligible effect on increasing the entropy of the password. And if I *did* take those requirements seriously, I would create a password that is very difficult to remember, dramatically decreasing the basic usability of the system. The entire basis for the NIST password guidelines is that password length is the only factor that does anything useful to enhance both security and usability.

### Password changing policies

First, should you change your password regularly? There is a section in the NIST guidelines that specifically addresses this earlier in the document. This is what they have to say: 

> Verifiers SHOULD NOT require memorized secrets to be changed arbitrarily (e.g., periodically). However, verifiers SHALL force a change if there is evidence of compromise of the authenticator.

NIST's reasoning is that people will not adopt stronger password practices because of this. If a user's password is "password1!" and it expires, they are very likely to simply change it to "password2@". This is shown by evidence using hacked password databases and analyzing the passwords recovered from them. People cannot be trusted to use strong passwords is the big takeaway and it's more important to choose a secure password to begin with than it is to require users to periodically change their passwords based on an arbitrary schedule.

### Use a password manager

Password managers are mentioned once in the NIST guidelines. Specifically, they have this to say: 

> Verifiers SHOULD permit claimants to use "paste" functionality when entering a memorized secret. This facilitates the use of password managers, which are widely used and in many cases increase the likelihood that users will choose stronger memorized secrets.

NIST is talking about allowing users to "paste" their passwords into the password box. It might be hard to believe, but many websites forbid this, which makes it impossible to use a password manager. What exactly *is* a password manager? It's an app or service that serves two purposes: one, it helps users generate secure passwords using a pseudo-random algorithm and two, it stores those passwords in an encrypted database. There are many ways in which this is accomplished. Some password managers like [Keepass](https://keepass.info/) store your passwords in an encrypted database locally on your computer, leaving it to you to decide how best to sync that database across devices. There are other password managers that are online systems which store your passwords in an online database and use a system of browser extensions to automatically enter passwords in appropriate websites. Popular ones are [Dashlane](https://www.dashlane.com/) and [LastPass](https://www.lastpass.com/). For what it's worth, any of these is a viable solution and has millions of users. Dashlane has a free plan but only allows one device. LastPass allows unlimited devices on its free plan but may not have as many features (though in my experience it works brilliantly). KeePass is absolutely free and open-source so it has that added security peace of mind, but it's very fiddly to use.

There are other platform specific password managers such as Apple's Keychain which are also worth checking out, especially if you're invested in that particular app ecosystem.

The bottom line is this: if you are not using a password manager, you really should give it a shot. It will change the way you keep your data secure.

### Multi-factor authentication

If you've taken the previous class, you may remember a discussion on multi-factor authentication. And I cannot stress enough how critical this is to get enabled as soon as possible. First, what does it mean? Remember what the three authentication factors are?

* Something you know (e.g. a shared secret or password)
* Something you have (e.g. a physical key or device)
* Something you are (like biometrics. Fingerprint or iris scanner)

Mutli-factor authentication is the use of two or more of these authentication methods to establish a session with a secure service. For example, I try to log into my Google account with my username and password (something I know) and then it sends an alert to my phone which I must respond to (something I have) in order to complete the login process. This means that any hacking attempt *must* have knowledge of our shared secret *and* my physical phone in order to compromise the security of my account.

Companies like Google and Microsoft use specialized apps that use a system of alerts on your phone to complete their multi-factor authentication. But many sites that don't have the resources of Google or Microsoft can leverage common, well-trusted APIs to create a secure multi-factor authentication system. For example, you can use an authentication app and connect it with the remote service. There are a number of great cryptographic authentication apps like:

* [Google Authenticator](https://play.google.com/store/apps/details?id=com.google.android.apps.authenticator2&hl=en_US)
* [Authy](https://authy.com/)
* [FreeOTP](https://freeotp.github.io/) - Open Source

Other ways in which multi-factor authentication are acheived are by sending one-time codes to the email address associated with the account, or sending a text message. Email authentication is secure, but annoying and suffers from latency. Text messages are horrifically insecure as text messaging is not encrypted. Still, they can serve in a pinch.

I very much encourage you to adopt the policy of both using a password manager and 2-factor authentication wherever possible. The first time you set it up, it will seem weird, but it works and gives you a lot of peace of mind.
