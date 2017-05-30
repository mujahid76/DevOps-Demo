node {

stage ('build'){
	checkout scm
	sh 'mvn clean install'
}

stage ('Test Cases Execution'){
	sh 'mvn clean org.jacoco:jacoco-maven-plugin:prepare-agent install -Pcoverage-per-test'
}

stage ('Sonar Analysis'){
	sh 'mvn sonar:sonar -Dsonar.host.url=http://172.31.33.85:9000/sonar'
}
	
stage('Code Coverage ') {
    sh "curl -o coverage.json 'http://172.31.33.85:9000/sonar/api/measures/component?componentKey=com.java.example:java-example&metricKeys=coverage';sonarCoverage=`jq '.component.measures[].value' coverage.json`;echo 'Code Coverage is \${sonarCoverage}' "
   }

stage ('Archive Artifacts'){
	archiveArtifacts artifacts: 'target/*.war'
}

input message: "QA Team Approval for Production Deployment?"

stage ('Production Deployment'){
	sh 'cp target/*.war /opt/tomcat/apache-tomcat/webapps/'
}
}
