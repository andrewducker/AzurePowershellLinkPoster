# Post from Pinboard to Dreamwidth using Azure Functions.

Contains a copy of Postlinks.ps1 from https://github.com/andrewducker/PowershellLinkPoster

"run.ps1" is run by default.  This calls Postlinks.ps1 using the environment variables:
- "pinboardUser" (Pinboard user to read from - e.g. "andrewducker")
- "emailFrom" (email address to send the mail from e.g. "andrew@ducker.org.uk")
- "emailto" (email address to send to at Dreamwidth e.g. "andrewducker+1234@post.dreamwidth.org")

You may want to set the timezone for it to run. Otherwise it will run using UTC.  You can do that by setting the environment variable WEBSITE_TIME_ZONE.  I use "GMT Standard Time", which adjusts for summertime, despite the name.

For more information about how to set Azure environment variables see the appropriate section in https://docs.microsoft.com/en-us/azure/azure-functions/functions-reference-powershell

This currently uses the post-by-email functionality of Dreamwidth.  For an explanation of how to set this up see https://www.dreamwidth.org/support/faqbrowse?faqid=195
