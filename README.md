![Straight Outta CommdiddlyOmpton] (https://github.com/jimsander/jds-env/images/mytoon.jpg?raw=true)
# jds-env
Common aliases and shell things that I use to setup my env.
Honestly, I've not touched this in 2 years... time to refresh (02.15.17)

# Tools List / Cheat Sheet

## testing
- [rerun ](https://github.com/rerun/rerun)
- [TAP := Test Anything](https://testanything.org)
- [BATS := ](https://github.com/sstephenson/bats.git)
- [inspec :=](https://github.com/chef/inspec)

## API
- flask
- chalice
- swagger

- python
- virtualenv

## Apps
- Authy
- Lastpass

## Container

- docker
- [openvz](https://openvz.org/Main_Page)

## Doc 
- grip - python github markdown preview
  - Cool! auto-refreshes as source is updated

```bash
    [jimsander@workHorse jds-env] # grip README.md
       * Running on http://localhost:6419/ (Press CTRL+C to quit)
```

![demo1] (https://github.com/jimsander/jds-env/images/grip-demo1.gif?raw=true)
## Git 
- [Somebody's Best Practices guide ](https://docs.google.com/document/d/1h8nijFSaa1jG_UE8v4WP7glh5qOUXnYtAtJh_gwOQHI)
- [PR/Issue Mangement](https://github.com/mary-poppins/mary-poppins)

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

[foo](https://localhost)

## Messaging
- Signal - Encrypted messaging, includes `disappearing` messages
- Slack - Great colalboration tool

## Orchestration
[Overiew](http://slides.com/maciejsawicki/projektowanie-i-wdrazanie-aplikacji-w-chmurze-2-3#/13)


## Virtualization
- VMWare
- Virtualbox 
- vagrant
- virtualenv

![demo1] (./images/grip-demo1.gif)



