![Straight Outta CommdiddlyOmpton] (./images/mytoon.jpg)
# jds-env
Common aliases and shell things that I use to setup my env.
Honestly, I've not touched this in 2 years... time to refresh (02.15.17)

# Tools Cheat 

## testing

- [rerun ](https://github.com/rerun/rerun)
- [TAP := Test Anything](https://testanything.org)
- [BATS := ](https://github.com/sstephenson/bats.git)

## API
- flask
- chalice
- swagger

- python
- virtualenv

## Apps
- Authy
- Lastpass

## Messaging
- Signal - Encrypted messaging, includes `disappearing` messages
- Slack - Great colalboration tool

## Virtualization
- VMWare
- Virtualbox 
- vagrant
- virtualenv

## Doc Tools 
- grip - python markdown preview

```bash
    [jimsander@workHorse jds-env] # grip README.md
       * Running on http://localhost:6419/ (Press CTRL+C to quit)
```

![demo1] (./images/grip-demo1.gif)

## json tools
- [jq : json query/parse ](https://stedolan.github.io/jq/)
  Since using *gron*, might start using [jq.node](https://github.com/FGRibreau/jq.node)

```bash
    # curl -s https://api.userinfo.io/userinfos?ip_address=`curl -s ` | jq '@text "Not My Address folks \(.ip_address)"'
    "Not My Address folks 162.251.10.14"
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



