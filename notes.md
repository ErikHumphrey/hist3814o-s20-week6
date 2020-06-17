# Notes — Week 6

## Historical observations

### Summary
* The techniques I decided to use for identifying and surfacing interesting historical observations were [`wget`](https://craftingdh.netlify.com/week/2/wget/), [OCR with R](https://craftingdh.netlify.com/week/2/ocr/), and text analysis with [DataBasic's WordCounter tool](https://www.databasic.io/en/wordcounter/).
  * `wget` was used to collect data for OCR.
  * OCR was used to further collect data from the images sourced with `wget`.
  * After combining all the OCR'd text into one file, the text was uploaded to WordCounter for analysis.
  * I would have also used OpenRefine to facilitate cleaning the OCR data, but there wasn't enough OCR data to work with in this case.
* I shared my results by making a static website and hosting it on GitHub Pages from my Week 6 repository. The website can be found [here](https://erikhumphrey.github.io/hist3814o-s20-week6/).
  * Instead of using Markdown and a Jekyll theme, I instead used HTML and made an "[index.html](docs/index.html)", then made it look a little better with CSS in "[styles.css](docs/styles.css)".
  * I included a short summary of the steps and technologies required to reproduce the study.
* All the files for the analysis itself can be found in the [archive-analysis](archive-analysis) directory.

### Steps

* Create a text file "wget-urls.txt" with the list of [seven microfilm PDFs](https://ahpn.lib.utexas.edu/microfilm) to download for analysis.
* `wget -i ../wget-urls.txt -r --no-parent -nd -w 2 --limit-rate=10`
* Open R Studio and navigate to archive-analysis/ocr-output. Set that folder as your working directory.
* Run all lines in ocr-pdf.R. This will take awhile, as there are 1,686 pages to OCR among all the PDFs. The R script first converts each page to TIFF then output text files with the contents of each page of the PDFs.
* Open a command line in the ocr-output directory. Run `rm *.tiff` (`bash`) or `del *.tiff` (Powershell) to remove all the lingering TIFF files.
* From the command line (e.g. `bash`), run `cat * > ../merged-text.txt` to merge all the OCR'd text files into one file.
  * If using Powershell, try `type * > ..\merged-text.txt`
* Visit [DataBasic's WordCounter page](https://www.databasic.io/en/wordcounter/), click "upload a file", select "merged-text.txt" and click "COUNT".

## Details omitted from exit ticket

* In order to keep the exit ticket brief, I removed these two anecdotes that I wrote early on. They digressed too much from the point.

*****

> There's certainly a lot in this course that could be applied to linguistics or etymology (which I suppose is often a field within history).

*****

This one certainly could have been shortened, but I believe I summarized this well in the exit ticket by saying that the course left me with skills that would be applicable after the course is over. After all, isn't that what education is originally for?

> For example, one of the first things I'd like to do with the knowledge from this course is to archive and preserve the music on the niche Japanese music sharing website, Creofuga. Though I've only ever used this website once, I discovered that much of the music hosted on the website only appears Even though I had discovered the website only so recently, I came to learn that the website will shut down on June 30, 2020. There's a lot of unique, high-quality music tracks used as background music by Japanese YouTube personalities. Though a few people may have the file saved locally on their hard drive or in personal cloud storage, there is no guarantee that these files will be around forever, and when Creofuga shuts down, public access to these files may be lost forever if not archived.  
