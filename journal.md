# Journal — Week 6

> Share the results of your explorations.

## Summary

* My explorations and observations were based on the [Digital Archive of the Guatemalan National Police Historical Archive](https://ahpn.lib.utexas.edu/home), which Amalia Skarlatou Levi linked in [this Tweet](https://twitter.com/amaliasl/status/1245559883816189955).
  * This website is a digital version of the [Guatemala National Police Archives](Guatemala National Police Archives), a large archive of over 100 years of records discovered in 2005.
* Many of the files for the analysis itself can be found in the [archive-analysis](archive-analysis) directory.
* `wget` was used to download the microfilm reel PDFs from the [digital archive](https://ahpn.lib.utexas.edu/microfilm).
* OCR with R was used to read the text from the PDFs and save them as text files.
* `cat` (or `type`) was used to merge all the text files into one for analysis.
* To analyze the files, [DataBasic's WordCounter tool](https://www.databasic.io/en/wordcounter) was used.
  * If common words like "the" and "a" were ignored, it could be analyzed for historical significance, including etymological or linguistic analysis.
* I would have also used OpenRefine to facilitate cleaning the OCR data, but there wasn't enough OCR data to work with in this case.

## Results

* Unfortunately, using R to convert and OCR so many PDFs was unstable, so R was not able to get through all the files. Further, the quality of the files was unsuitable for OCR, resulting in most of the OCR'd text being gibberish and incomplete; not even any Spanish could be made out!
* To test out WordCounter, I created a "[merged-text-test.txt](archive-analysis/merged-text-test.txt)" file that can be manipulated and uploaded instead.
  * The results of uploading that file are saved for 60 days, and can be found [here](https://www.databasic.io/en/wordcounter/results/5ee982bef0fc7e01fdb60c5f). While the results could be useful for a basic quantitative text analysis, they are too simple for digital history use with large amounts of data, and cannot be filtered.

  ![WordCounter results](https://i.imgur.com/J943EIp.jpg "WordCounter results")  
  *WordCounter results*
* In the future, I would use more robust tools.
* The results of the exploration were published at https://erikhumphrey.github.io/hist3814o-s20-week6/.



> Reflect on Michelle Moravec’s own cycle of exploration and what that might imply for yours.

Moravec's cycle of exploration wasn't very relatable, so it did not have a large implication for my own cycle of exploration. However, she did mention that she had been studying links between feminist art and the woman's liberation movement for over 20 years. That sounds like a long time to work on such a narrow topic, so the implication it could have is that if during my own cycle of exploration, I make a grand enough discovery that really piques my interest, it could grow from a small, experimental study into an endeavour that spans half my career.

Moravec also compared two data visualization tools used by digital historians: Gephi and the Raw interface (RAWGraphs). Though I've only used Gephi, as far as I know, I've actually seen more visualizations created with RAWGraphs. I'd have to say that the RAWGraphs visualization seems more clear when it comes to visualizing networked data.