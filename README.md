### Formation OpenClassrooms Developer d’application PHP/Symfony - Project 6 :
# Develop from A to Z the SnowTricks community site

[![Codacy Badge](https://app.codacy.com/project/badge/Grade/11331498563c42e48bd0750211969876)](https://www.codacy.com/gh/olha-r/p6-snowtricks/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=olha-r/p6-snowtricks&amp;utm_campaign=Badge_Grade)


## Installation

1. **CLONE** or **DOWNLOAD** the project
2. Open the project in your IDE/text editor. 
3. You need to configure at least these lines in **.env** file:

```php
...
###> symfony/mailer ###
MAILER_DSN=smtp://match_your_email_server
###< symfony/mailer ###

###> doctrine/doctrine-bundle ###
DATABASE_URL="mysql://db_user:db_password@127.0.0.1:3306/db_name?serverVersion=5.7"
###< doctrine/doctrine-bundle ###

###> symfony/framework-bundle ###
APP_ENV=dev
###> symfony/framework-bundle ###
```

4. Install dependencies with ```composer install```.
5. Create the database with the command ```php bin/console doctrine:database:create```.
6. Start the server by typing this line in your terminal ```php bin/console server:start```.
7. Run the following command to add the fixtures: ```php bin/console doctrine:fixtures:load```.

#### You are ready to use your app!.
