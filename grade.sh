CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'
cp -r ./* ./grading-area
cd grading-area
cp student-submission/ListExamples.java ./ListExamples.java

javac -cp $CPATH *.java
java -cp $CPATH org.junit.runner.JUnitCore TestListExamples.java
error=$?
if [ $error -eq 0 ]
then
    echo "test fails"
fi 

# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

# Then, add here code to compile and run, and do any post-processing of the
# tests
