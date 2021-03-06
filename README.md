# Developer Setup ChromeOS

![Lenovo Duet with blue tooth headphones and mouse](lenovo-duet-scaled.webp)

Setting up a Lenovo Duet ChromeOS tablet for developer use.
Expanded to include Lenovo ThinkPad C13 Yoga Chromebook.

## Background

I haven't owned an Android device in some time.
I've never owned a ChromeOS device.
With the advent of the Linux(Beta) feature and coming across a Lenovo Duet on sale, it was time to explore this.
I've always been a fan of small devices and seeing what they can be pushed to do.  For example, I'm initiating this repo on an iPad mini with Bluetooth keyboard.

### Why the Lenovo Duet?

- A contributing factor was that I found it on sale for $250.
- I have in general been happy with other Lenovo products I've owned.
- Machine specs
  - 4G RAM
  - 128G Storage
  - 8 core processor
  - 1080P+ display
  - Included keyboard
  - USI stylus support (I'm a long time tablet/stylus user)

### Why the Lenovo Thinkpad C13 Yoga?

With the experience of the Duet gained, I was interested in trying a more capable Chromebook.
I liked the sexy red Samsung Galaxy Chromebook.  Ultimately, the keyboard, processor, and RAM of the C13 won me over.

- Full size ThinkPad keyboard, with TrackPoint
- I do like the convertible form factor of the C13
- The specs of the C13 makes it a very nice machine
  - Ryzen 7, 16G RAM, 256G SSD, 1080P display, TrackPoint, on board USI stylus

### Use Case

What's my use case?  I plan to revisit the Android ecosystem and check out the state of ChromeOS.  I appreciate experiential learning.  I am also very intrigued with the ability to run Linux apps.  It is my intent to use this device for a small amount of consumption and for Linux experimentation and development.

## System Configuration

### Enable Linux (Beta)

This was easily found in Settings -> Developers -> Linux development environment (Beta)

### Other settings

I enabled the reading list feature.
Experimented with and turned off dark mode theming.

Discovered that you can view system information at <chrome://system>  Notable information includes:

- crostini for Linux container
- network_devices
- power_supply_info

## Applications

With a ChromeOS device you can have three different types of apps installed.  Chrome apps which are web based applications, Android store applications (I understand that these run in a container), and Linux apps.

Use the web store for ChromeOS apps, the play store for android apps, and your command line (deb) for Linux apps.

### ChromeOS apps

User Apps:

- OneNote, takes you to the web SPA.  ok
- OneDrive
- TweetDeck
- Zoom

- Insomnia (REST/GraphQL) client, it was older 2.7 version, no GraphQL support, _removed_.

### Chrome Extensions

- uBlock Origin
- Altair GraphQL client
- Animation Policy
- axe DevTools
- Boomerang SOAP and REST client
- Debugger for Adobe Analytics
- EditThisCookie
- Eye Dropper
- gRPC-Web Developer Tools
- JSON Formatter (callumlocke.com)
- Lighthouse
- Smaart Page Ruler
- React Developer Tools
- Redux DevTools
- Testing Playground

Some extensions I've found useful in the past:

- Adblock Plus
- Revolver - Tabs
- XPath Helper

### Android apps

- RadarScope, great on the bigger screen
- OneNote, the Android app is a better experience
- Udemy, works as expected
- Yahoo Mail
- Discord
- Very old GoF Design Patterns app
- LinkedIN Learning
- Kindle
- Morse Trainer for Ham Radio

- Slack, Usability was awful.  Especially bad was pop up box elements. _Removed it._
- Wifi Analyzer _didn't work_.  I understand that it may be because of sandboxing android apps?

### Linux apps

Install developer apps:

- `terminal` (built-in), pin it to start
- [Visual Studio Code][1] and [extensions][4]
- `git`, ships with v2.20.1
  - `git config --global init.defaultBranch main`
  - set merge method, email, and name
- `git-gui`
- Python 3, ships with 3.7.3
- [nvm][2]
- [node.js][3], v16 with nvm
  - nvm
  - gatsby-cli
  - aws-cdk
- [docker][5]
  - [Docker's install instructions][8]
  - [How to install and run Docker on a Chromebook][6]
  - [Docker on a Chromebook on Crostini][7]
  - `docker-compose` will not install properly on Duet because of the ARM architecture.  There is an alternate method using `python` and `pip`.
- [AWS CLI][9]
- [Insomnia][10] REST/GraphQL client, failed to install.
- [Hexchat][12] IRC client
- `go` programming lanuage

`curl` and `wget` are also included in the distro.

The Docker installation was a little round about.  Start with the Docker instructions.  Then see the other instructions about setting up to run non-root.

Also, wired up to my GitHub account with ssh.  So, editing this on the Lenovo Duet in vi.

Selecting with a mouse in terminal automatically copies.  Right clicking with the mouse pastes.

## Observations

Dark mode doesn't work well across all apps.  A prime example was trying to read email in the Yahoo mail app.  If the sender specified black text, you wouldn't be able to read the email on the black background.

Captain Obvious here!  This is a small screen device.  At full 1080P resolution everything is _tiny!_  For the display size setting, I'm using 90% which is 1200 x 750.  It is tolerable.  Wait a minute.  Didn't I say this is a 1080P device?  How is 1200 x 750 90%?  Well, that's because in the display settings the default scaling has 1080 x 675 as the default scaling.  The slider is make things smaller or bigger.  They should have just left off the "scaling factor" that makes no sense.  It's just poor UX.

Also, some of the keys on the keyboard on the right side are _half-width_.

I do recall some issues with installing some Android apps.  There was some insistence that I needed to purchase the item.  One, I had installed and had to remove.  A log out and a reboot remedied the situation.

I _do_ miss that the keyboard isn't backlit.

## Accessories

I picked up a super cheap bluetooth mouse.
I also dug out an old bluetooth earphones set.  The duet has built-in speakers.  But, they aren't that great.  It does _not_ have a headset jack.  However, it does come with a dongle that converts USB-C to a headset jack.  I do intend to pick up a USI stylus to use with it.

## Experience

I am [journaling][11] my experiences.

## Resources

- [Learning with VS Code on Chromebooks][1]
- [nvm][2]
- [node.js][3]
- [docker][5]
- [Docker's install instructions][8]
- [How to install and run Docker on a Chromebook][6]
- [Docker on a Chromebook on Crostini][7]
- [AWS CLI][9]

[1]: https://code.visualstudio.com/blogs/2020/12/03/chromebook-get-started
[2]: https://github.com/nvm-sh/nvm
[3]: https://nodejs.org/
[4]: vscode-extensions.md
[5]: https://docker.com
[6]: https://dvillalobos.github.io/2020/How-to-install-and-run-Docker-on-a-Chromebook/
[7]: http://joe.blog.freemansoft.com/2020/03/docker-on-chromebook-on-crostini.html
[8]: https://docs.docker.com/engine/install/debian/
[9]: https://aws.amazon.com/cli/
[10]: https://support.insomnia.rest/article/156-installation
[11]: Journal/
[12]: https://hexchat.github.io/
