# Journal

A journal of the hands on experience of setting up, using, and developing on the Lenovo Duet Chrome OS tablet.

## 2021.04.11

I am to the point now where I am using the duet with VS Code, git, etc to work on this repo.  

I did get the basic hello world docker container running.

For [the picture](lenovo-duet-scaled.webp) in the [README.md](README.md), I took it with an iPhone (heic).  Uploaded it to OneDrive.  Downloaded it to the duet.  Used a web tool to convert it to webp format.  Then used the file browser to move it to the Linux files folder.  I should probably add Google Drive to my iPhone so I can shortcut a bit.

Installed the AWS CLI.  Verified operation.

## 2021.04.18

- Updated VS Code from Linux command line.
- Installed gatsby.  
  - Played with the hello-world app (`gatsby develop`)
  - Ran gatsby develop and was able to browse to it with `http://localhost:8000`
  - Was able to browse to the gatsby GraphQL interface at `http://localhost:8000/___graphql`
- Attempted to install the Insomnia REST/GraphQL app from debian package.  No go.
- Installed Altair GraphQL client for Chrome.
- Terminal app crashed on me when I left it running `gatsby develop` and walked away for a bit.  And I haven't been able to browse the gatsby site in the browser again.  Rebooting the duet and restarting everything, it worked again.
