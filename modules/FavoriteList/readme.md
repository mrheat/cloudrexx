<!--
 _____                     _ _       _     _     _   
|  ___|_ ___   _____  _ __(_) |_ ___| |   (_)___| |_ 
| |_ / _` \ \ / / _ \| '__| | __/ _ \ |   | / __| __|
|  _| (_| |\ V / (_) | |  | | ||  __/ |___| \__ \ |_ 
|_|  \__,_| \_/ \___/|_|  |_|\__\___|_____|_|___/\__|
                                                     
-->

# FavoriteList
{Description}

## Documentation
{Documentation}

### Placeholder
{Placeholder}

## Installation
To install this component, you have to import some blueprint from the `View/Template/Blueprint` directory into Cloudrexx.

### Blueprint
> Software blueprints focus on one application aspect, for clarity of presentation and to ensure that all of the relevant logic is localized.
> [Wikipedia](https://en.wikipedia.org/wiki/Software_blueprint)

These predefined templates are just basic examples, you can add more options if needed.
For further placeholder and options, please go to the [placeholder section](#placeholder).

#### PDF
You have to import the following HTML PDF template in the "PDF Templates" (`/cadmin/Config/Pdf`) section.

Template:
- PdfCatalog.html

Choose/activate your previously added template (`/cadmin/FavoriteList/Settings` > PDF template > Template).

#### Mail
You have to create the following mail templates in "Mail Template" (`/cadmin/FavoriteList/Settings/Mailing`) section.

As an example, you can import the HTML layout from the predefined templates in the blueprint folder.

##### Mail

HTML layout: `MailMail.html`

| Option          | Value |
|-----------------|-------|
| Key             | mail  |
| Use HTML format | check |

The following option is overwritten/set on submit:
- Recipient email address (to:)

##### Recommendation

HTML layout: `MailRecommendation.html`

| Option          | Value          |
|-----------------|----------------|
| Key             | recommendation |
| Use HTML format | check          |

The following options are overwritten/set on submit:
- Sender name
- Sender email address (from:)
- Recipient email address (to:)

##### Inquiry

HTML layout: `MailInquiry.html`

| Option          | Value   |
|-----------------|---------|
| Key             | inquiry |
| Use HTML format | check   |

These defined options are all mandatory, this means you can customize all other (not listed) options freely.