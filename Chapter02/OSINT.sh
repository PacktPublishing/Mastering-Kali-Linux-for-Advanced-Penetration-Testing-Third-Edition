#!/bin/bash
echo "Enter target domain:"
read domain
if [[ $domain != "" ]]; then
echo "target domain set to $domain"
echo "********************************************" 
echo "The Harvestor" 
	theharvester -d $domain -l 500 -b all -f harvester_$domain 
echo "done!"
echo "********************************************"
echo "Whois Details"
	whois $domain >>  whois_$domain
echo "done!"
echo "********************************************"
echo "Searching for txt files on $domain using Goofile..."
	goofile -d $domain -f txt >> goofile_txt_$domain
echo "done!"
echo "********************************************"
echo "Searching for pdf files on $domain using Goofile..."
	goofile -d $domain -f pdf >> goofile_pdf_$domain
echo "done!"
echo "********************************************"
echo "Searching for pdf files on $domain using Goofile..."
	goofile -d $domain -f doc >> goofile_doc_$domain
echo "done!"
echo "********************************************"
echo "Searching for xls files on $domain using Goofile..." 
	goofile -d $domain -f xls >> goofile_xls_$domain
echo "done!"
else
echo "Error!"
fi
