# RottenPotatoes demo app: getting started

This app is associated with the free [online
course](http://www.saas-class.org) and (non-free)
[ebook](http://www.saasbook.info) Engineering Software as a Service.

To get started:

0. [Setup a Cloud9
environment](https://github.com/saasbook/courseware/wiki/Setting-up-Cloud9)
for the course.

0. Fork this repo to your GitHub account, then in your Cloud9 terminal, type the following command to clone your fork to your development workspace:

0.  `git clone https://github.com/palm007funny/rotten-potatoes.git`
0.  `git commit -m "first commit"`
0.  `git remote add origin https://github.com/palm007funny/rotten-potatoes.git`
0.  `git push`

0. Run the command `bundle install --without production` to make sure all the gems
(libraries) used by the app are in place.

0. Run `bundle exec rake db:setup` to create the initial database.

0. Run `rails server -p $PORT -b $IP` to start the app.  Cloud9 will pop
up a window showing the URL to visit in your browser to interact with
the running app.
