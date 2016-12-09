# Unusual Utilies

This is a catch-all repository for "unusual" utilities that I wrote to solve an odd problem.

## Roto Scraper

Do you wish to keep an eye on the latest sports news while you're at work? Do you feel some sense of shame with you open espn.com and your 23" monitor starts to look like a circus? Do you ever navigate to the latest headline of interest and a video on autoplay starts to blast through your speakers? Do you wish you could get API-like access to sports news text without paying for access? Do you want your sports headlines to look like you're monitoring a server or working at a Bloomberg Terminal? If so, then maybe the Roto Scraper is for you. This simple shell script scrapes the HTML of one the better sports news sites and outputs it to your terminal as a simple autorefreshing feed of text.

![Alt text](/roto_scraper/images/roto_scraper.png?raw=true)

### Requirements

* The Bash shell

If you're on a Linux or macOS variant, you're probably all set. If you're on Windows, you should look into [Cygwin](https://www.cygwin.com/) although this script has not been tested there.

### Running the script

```bash
cd your-install-directory/unusual-utilies/roto_scraper
./roto_scraper.sh
```

### FAQ

#### Can I use zsh?

Yes, assuming the bash program exists in /bin/bash, this script should work with zsh as your default shell. This script relies heavily on regular expressions which I've found can have very subtle differences in zsh.

#### Why are you only outputting headlines from 3 sports?

This was based on the number of lines that fit onto my terminal at full screen. I've been told I like big font so you may be able to adjust it to fit 4.

#### What other sports besides the four major sports could I choose to display?

The Premeir League, golf, NASCAR, or the NFL Draft. This list is governed by the underlying site and subject to change.

#### Could I set the refresh to occur at more frequent intervals?

Yes, but I would not recommend setting it at a higher rate than once per minute for various reasons.

#### Will this script always work?

Probably not--it is dependent on the structure of the underlying site's HTML. I will try to update it if it breaks in the future but buyer beware.

#### Your bash code indentation practices do not adhere to the preferred style? Can I point that out?

Yes please do. I am a Rubyist by nature and very big into style and convention. I did not do a ton of research into shell script conventions before putting this together. If you see something that irks you, please call it out. This is how many of us learn.
