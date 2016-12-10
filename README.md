# Unusual Utilities

This is a catch-all repository for "unusual" utilities that I wrote to solve an odd problem.

###### Utilities Included
* [Roto Scraper](#roto-scraper)
* [Prime Movie Scanner](#prime-movie-scanner)

## [Roto Scraper](#roto-scraper)

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

## [Prime Movie Scanner](#prime-movie-scanner)

If you're like me you love to keep lists. Lists of books to read. Lists of things to do. Lists of albums to investigate. Lists of movies to watch. If you have an Amazon Prime membership and you have a queue of movies you would like to eventually watch there is a bit of a problem. You have to visit each movie's instant video page one-by-one to determine whether or not its free. What if there was a one-click tool that you could run to determine which movies in your queue don't require an additional payment to watch?

![Alt text](/amazon_prime_free_movies/images/free_movie.png?raw=true)


### Requirements

* The Bash shell

If you're on a Linux or macOS variant, you're probably all set. If you're on Windows, you should look into [Cygwin](https://www.cygwin.com/) although this script has not been tested there.

### Running the script

```bash
cd your-install-directory/unusual-utilies/amazon_prime_free_movies
cp movies.txt.sample movies.txt
# edit movies.txt and insert the URL links to the movies you're interested in watching
./check_amazon_instant_video.sh
```

### FAQ

#### So I need to find the URLs instead of simply writing out the movie title?

Yes. It is technically possible to adjust the code so that the URL lookup is done internally but it is much more prone to errors. IMO, preparing the URL list is a small price that you only have to pay once--for a high reward.

#### Why are you specifying a user agent?

By default, Amazon does not allow cURL requests. You need to disguise yourself as a browser for data to be returned. As always, I would recommend not cURLing too furiously as a common courtesy to any 3rd party site.

#### Will the results change if I re-run the script with the same movie list in the future?

I've found that the results do not change very often but I've learned that Amazon changes its free movie inventory at the end of each month.

#### Will this script always work?

No. It already broke once. This happens whenever Amazon changes the text it uses to identify a free movie. I will try to keep it updated.
