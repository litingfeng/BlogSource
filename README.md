# BlogSource
This repository contains Hugo’s content and other source files.

## Instructions of deploying hugo website on my github page
1. Create a website or add blogs
2. deploy the website
```
hugo --theme=ananke --baseUrl="https://litingfeng.github.io/
```
There will be a *public* folder under *BlogSource*. 

3. copy files under public to folder *litingfeng.github.io*, then push them to the remote repository.
```
$ cd public
$ cp -r . <path to litingfeng.github.io>
$ cd <path to litingfeng.github.io>
$ git init
$ git add .
$ git commit -m "add new article"
$ git push https://github.com/litingfeng/litingfeng.github.io.git master
```

Or simply run `source ./deploy.sh` as an alternative to step2~3.

