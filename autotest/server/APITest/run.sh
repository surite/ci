#!/bin/sh
gradle build
java -cp "target/*:resource/*" org.testng.TestNG -d test-output testng.xml