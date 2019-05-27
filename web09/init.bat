mkdir .\WebContent\WEB-INF\classes
javac src\com\bit\db\MyOracle.java -d ./WebContent/WEB-INF/classes
cd WebContent
jar -cvf test.war *
