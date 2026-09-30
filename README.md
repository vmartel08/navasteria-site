# Navasteria Website

Public website for **Navasteria**.

Current status: **placeholder site live; further development on hold.**

## Production

-   Website: https://www.navasteria.com
-   Contact: info@navasteria.com
-   Domain registrar / DNS: Cloudflare
-   Hosting: GitHub Pages
-   Repository: `vmartel08/navasteria-site`

## Architecture

The site is authored in Typst and generated as static HTML using
Calepin.

``` text
src/
    Typst / Calepin source
        |
calepin compile src public
        |
public/
    generated static website
        |
GitHub Actions
        |
GitHub Pages
        |
https://www.navasteria.com
```

Current local toolchain at initial deployment:

-   Calepin 0.0.60
-   Typst 0.15.1
-   Python 3.14.2

## Repository layout

``` text
navasteria-site/
|-- .github/
|   `-- workflows/
|       `-- pages.yml
|-- src/
|   |-- calepin.toml
|   |-- index.typ
|   `-- 404.typ
|-- public/
|   `-- generated site
|-- .gitignore
`-- README.md
```

Calepin runtime/cache files generated under `src/.calepin/` and
`src/.calepin-entry.*` are ignored by Git.

## Build

From the repository root:

``` powershell
calepin compile src public
```

`src/` is the maintained source.

`public/` is generated output and is currently committed to Git so that
GitHub Pages can deploy it without installing Calepin during the GitHub
Actions workflow.

## Deployment

GitHub Pages uses a custom GitHub Actions workflow:

``` text
.github/workflows/pages.yml
```

The workflow uploads the contents of `public/` and deploys them to
GitHub Pages.

Deployment was validated successfully on 30 September 2026.

The production site is available over HTTPS and serves the Calepin
placeholder page.

## Domain and DNS

Domain:

``` text
navasteria.com
```

DNS is managed by Cloudflare.

Current website arrangement:

``` text
navasteria.com
    -> redirects to https://www.navasteria.com

www.navasteria.com
    -> GitHub Pages
```

GitHub Pages custom-domain verification is configured and HTTPS is
working.

## Email

Cloudflare Email Routing is enabled.

``` text
info@navasteria.com
    -> private Proton mailbox
```

Inbound delivery has been tested successfully.

Catch-all routing remains disabled.

## Current public page

The website intentionally contains only a minimal placeholder:

-   Navasteria
-   "Welcome to Navasteria"
-   "Website under development."
-   `info@navasteria.com`

The full website has **not yet been developed or published**.

## Resume point

When development resumes:

1.  Develop and preview changes in `src/`.

2.  Compile locally with:

    ``` powershell
    calepin compile src public
    ```

3.  Review the generated site locally before publication.

4.  Commit both the source and generated output.

5.  Push to `main`.

6.  GitHub Actions deploys `public/` automatically.

Do not involve the private Vincemedia server in the public Navasteria
website architecture unless this is deliberately redesigned later.
