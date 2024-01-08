# jekyll-theme-sca-drachenwald

## Installation

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "jekyll-theme-sca-drachenwald"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: jekyll-theme-sca-drachenwald
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-theme-sca-drachenwald

## Usage

Minimum configuration:

- Create file `_config.yml`
    - set `title:` to your group's name
    - set `dw_group:` to your group's name
    - set `dw_disclaimer` to a disclaimer for the footer, e.g. ""

- Create file `_sass/variables.scss`
    - Pick two colours from your site, e.g. from your group's heraldry
    - set `$dw-dark:` to the hex code for the darker colour; this is used for
      buttons and dark backgrounds
    - set `$dw-light:` to the hex code for the lighter colour; this is used
      for text on the dark backgrounds
    - set `$dw-dark-highlight:` to the hex code for a brighter version of the
      dark colour; this will be used to light up e.g. buttons when the user
      hovers over them.

- Create folder `assets/img`
    - Place an SVG logo, e.g. your group heraldry, in this directory with
      the filename `heraldry.svg`

- Create folder `_data/remote`
    - Download https://dis.drachenwald.sca.org/data/regnum-groups.json and
      place it in a file called `groups.json` in this folder
    - This file must be refreshed periodically, e.g. each time you build
      your site. Consider adding a command like this to your build script:

```
$ curl -o _data/remote/groups.json https://dis.drachenwald.sca.org/data/regnum-groups.json
```

Optionally:

- in `_config.yml`:
    - set `dw_calendar_groups:` to a list of groups that you'd like to appear
      in the events calendar (defaults to the value of `dw_group`)
    - set `dw_contact_groups:` to a list of groups that you'd liek to appear
      in the contacts page (defaults to the value of `dw_group`)

- in `assets/img`
    - Place a JPG of a banner image, with the filename `default-banner.jpg`.
      This is ideally at least 1200px across, and relatively dark so that
      bright text will stand out over it.
    - If you intend to use the default home page, you may place three
      images in this directory to use for the main navigation. Ideally
      600x400 pixels.
        - `splash-about.jpg`
        - `splash-events.jpg`
        - `splash-contacts.jpg`
    - If you intend to use the default about page, you may place an
      image in this directory to use as the side image. Ideally 800x533 pixels.
        - `about.jpg`

- in the top level directory, add four files to get the default pages.
    - `index.html` with contents:
        ```
        ---
        layout: home
        ---
        ```
    - `about.html` (or `about.md`) with contents:
        ```
        ---
        layout: about
        title: About
        ---
        ```
    - `contact.html` (or `contact.md`) with contents:
        ```
        ---
        title: Contacts
        layout: contact
        ---
        ```
    - `events.html` (or `events.md`) with contents:
        ```
        ---
        layout: events
        title: Events
        ---
        ```


- Create a file `_data/nav.yml`
    - This will override the navigation bar. See the example below for the
      format.


Example `_config.yml`:
```yaml
title: "Templateshire"

dw_group: "Templateshire"
dw_disclaimer: "This is the recognised site of Templateshire in the Society
    for Creative Anachronism. Copyright of all materials remains with the
    contributors."
dw_calendar_groups:
  - Templateshire
  - Nearbyshire
  - Friendlyshire
dw_contact_groups:
  - Templateshire
  - Nearbyshire
  - Friendlyshire
```

Example `_sass/variables.scss`:
```scss
$dw-dark: #003300;
$dw-light: #00ff00;
$dw-dark-highlight: #006600;
```

Example `_data/nav.yml`:
```yaml
top:

- title: Events
  url: /events/

- title: Contacts
  url: /contact/
```

## Overriding pages

Instead of using the default pages as above, you may replace these
pages with your own files of the same name. Begin each page with
at least these four lines:

```
---
title: Title of the Page
layout: page
---
```

Substitute "Title of the Page" with something appropriate, but
`layout: page` and the triple-dashes are essential.

# Developing the theme

## Updating bootstrap

- https://getbootstrap.com/docs/5.3/getting-started/download/
- download compiled and minified javascript
- drop `js/bootstrap.bundle.min.js` and `js/bootstrap.bundle.min.js.map` into `assets/bootstrap/`
- download source
- drop contents of `scss/` into `_sass/bootstrap/`

## Updating Fontawesome

- https://fontawesome.com/download
- download "for the web"
- copy contents of `scss/` into `_sass/fontawesome/`
- copy contents of `webfonts/` into `assets/fontawesome/webfonts/`
