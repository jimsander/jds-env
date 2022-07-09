<img src="https://github.com/jimsander/jds-env/blob/master/images/mytoon.jpg" height='150px' weight='150px'>

# jds-env
(07.08.22) - 
> 5 years gone by 
(02.15.17) - 
> Common aliases and shell things that I use to setup my env.
> Honestly, I've not touched this in 2 years... time to refresh 

# Tools List / Cheat Sheet

## Security
- pwgen - pw generation : interactive(tty) and script(non-tty)
## testing
- [rerun ](https://github.com/rerun/rerun)
- [TAP := Test Anything](https://testanything.org)
- [BATS := ](https://github.com/sstephenson/bats.git)
- [inspec :=](https://github.com/chef/inspec)
- [Flashback Browser Replay](https://opensource.com/article/17/4/flashback-internet-mocking-tool)

## API Development
- chalice
- flask
- python
- swagger
- virtualenv

## Apps
Used Daily for security and 
- Authy
- Lastpass

## Container

- docker
- kubernetes (don't laugh, this page hadn't been updated since 2017 when this was added)
- [openvz](https://openvz.org/Main_Page)

## Doc 
- grip - python github markdown preview @ http://localhost:6419
  - PRO: Cool! auto-refreshes as source is updated
  - CON: Uses Github API Rate limiting, have to be sparse on refreshing the browser

Sample: 
```bash
    [jimsander@workHorse jds-env] # grip README.md
       * Running on http://localhost:6419/ (Press CTRL+C to quit)
```

![demo1](https://github.com/jimsander/jds-env/blob/master/images/grip-demo1.gif)
## Git 
- [Somebody's Best Practices guide ](https://docs.google.com/document/d/1h8nijFSaa1jG_UE8v4WP7glh5qOUXnYtAtJh_gwOQHI)
- [PR/Issue Mangement](https://github.com/mary-poppins/mary-poppins)
- [Release Management](http://nvie.com/posts/a-successful-git-branching-model/)

## Json 
- [jq : json query/parse ](https://stedolan.github.io/jq/)
  Since using *gron*, might start using [jq.node](https://github.com/FGRibreau/jq.node)

```bash
    # curl -s https://api.userinfo.io/userinfos?ip_address=`curl -s ` | jq '@text "Not My Address folks \(.ip_address)"'
    "Not My Address folks 162.250.11.13"
```

- [gron : flatten json pathing, good for grep: `pip install gron`](https://github.com/FGRibreau/gron)

```bash
    # curl -s https://api.userinfo.io/userinfos?ip_address=`curl icanhazip.com` |  gron
      json = {};
      json.city = {};
      json.city.code = "67123";
      json.city.name = "Potwin";
      json.continent = {};
      json.continent.code = "NA";
      json.continent.name = "North America";
      . . .

    # curl -s https://api.userinfo.io/userinfos?ip_address=`curl -s icanhazip.com` | gron | grep Potwin
      json.city.name = "Potwin";
```

- jq.node

## Messaging
- Signal - Encrypted messaging, includes `disappearing` messages
- Slack - Great colalboration tool

## Orchestration
[Overiew](http://slides.com/maciejsawicki/projektowanie-i-wdrazanie-aplikacji-w-chmurze-2-3#/13)

## **PRIVACY** 

If you think privacy is unimportant for you because you have nothing to hide, you might as well say free speech is unimportant for you because you have nothing useful to say. -- 2015, anonymous?

### Browsers
- Hoxx VPN (They save  VPN)
- Tor VPN

### Mail / Messaing
- Protonmail 
- Signal 

## Productivity Tools
- Leechblock NG (Firefox)

## Virtualization
- VMWare
- Virtualbox 
- vagrant
- virtualenv

