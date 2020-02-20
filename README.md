# pdf-process
Tools to support my workflow for scanning and archiving documentation related to heritage telephony.

## Workflow
This tooling is likely specific to my use case, but my workflow is roughly:
* Scan to PDF as an image
* Run the resulting PDF through `soffice` to reduce the filesize

OCR will come later, as will any more sophisticated manipulation of these documents.

## Tools
* `soffice-compress` - bash script which uses LibreOffice to reduce scan filesizes

## Dependencies
* Bash
* LibreOffice - https://www.libreoffice.org - specifically the `soffice` binary

