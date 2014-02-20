To build:

    docker build -rm -t docker-gradle .

To run:

    docker run -rm -v $PWD:/opt/gradle -i -t docker-gradle tasks
    docker run -rm -v $PWD:/opt/gradle -i -t docker-gradle test
    docker run -rm -v $PWD:/opt/gradle -i -t docker-gradle build

This will run [Gradle][2] tasks against an example [Gradle + Groovy][3] project in a [Docker][1] container.

[1]: https://www.docker.io/
[2]: http://www.gradle.org/docs/current/userguide/userguide.html
[3]: http://www.gradle.org/docs/current/userguide/tutorial_groovy_projects.html
