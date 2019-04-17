#!/bin/bash

# Start ssh agent and add key
eval "$(ssh-agent -s)" # Start the ssh agent
chmod 600 deploy_key
ssh-add deploy_key


if [[ $TRAVIS_BRANCH == 'master' ]]
then
  # configure your name and email if you have not done so
  git config --global user.email "will@bowdit.ch"
  git config --global user.name "willbowditch"

  # clone the repository to the book-output directory
  git clone -b gh-pages \
    git@github.com:ukgovdatascience/rap-website.git \
    book-output
  cd book-output
  git rm -rf *
  # Copy the new book and commit!
  cp -r ../site/docs/* ./
  git add --all *
  git commit -m "Travis built book"
  git push -q origin gh-pages
else
  echo "Not publishing as not in MASTER branch"
fi
