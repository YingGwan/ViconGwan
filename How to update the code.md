- **add key to respect resp in github**: https://blog.csdn.net/loner_fang/article/details/80488385

- **In local workspace： **

- 

  ```git bash
  git add .
  ```

  ```git bash
  git commit -m "third change"
  ```

  ```
  git remote add origin XXXXXXXXXXXXXXXXXX(SSH address)
  ```

  - if wrong, 

    ```
    git remote rm origin
    ```

    ```
    git remote add origin XXXXXXXXXXXXXXXXXX(SSH address)
    ```

  ```
  git push -u origin main       
  ```

  -  here, I name the branch "main"

   

# Important Note before pushing

-  If we want to correctly use update files, he/she needs to generate ssh key by: 

  ```git
  ssh-keygen -t rsa -C "your@email.com"
  ```

  then:

  You can go to C:\User\administrator\.ssh\ 

  to check whether you got his key

- Then, add the ssh key to your github account

- open your git bash, enter these two commands:

  ``` git
  ssh-agent bash
  ```

  ```git
  ssh-add ~/.ssh/Tmech2020_key1
  ```

  Then you add your ssh key in your computer

- You could use command to push

  ```git
  git push -u origin main
  ```

# When single file is larger than 500MB

- https://git-lfs.github.com/

  In this website, download and install LFS system

  Then when git, you could update the file which is larger than 500M.

  

# Update github

- git status 

  to see if there are some new files or files had been modified

- git add *

  only add all new files

  git add . 

  add and delete

- git commit -m "change"

- git pull origin master

  get latest code

- git push origin master

  push change to github



