**Sowmya_sudhakar_teladoc_challenge**

This framework is designed to add and delete users from https://www.way2automation.com/angularjs-protractor/webtables/

**Environment Setup**

Download the project folder sowmya_sudhakar_teladoc_challenge from github to your local system.
Navigate to the command line prompt and navigate to your project folder.
Execute the following commands which installs ruby and other dependent gems for the project.

**$ gem install ruby**

**$ gem install bundler**

**$ bundle install** 

**Execution the tests**

This command executes all the scenarios in the features folder.

**$ cucumber features**

Below command executes the scenarios based on the rake task tags

**cucumber features -t @all_scenarios**  - This command executes all the scenarios tagges as '@all_scenarios'

**cucumber features -t @add_user**  - This command executes all the scenarios tagges as '@add_user'

**cucumber features -t @delete_user**  - This command executes all the scenarios tagges as '@delete_user'
