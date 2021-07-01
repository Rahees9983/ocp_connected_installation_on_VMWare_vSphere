echo "Approving all Pending csr"
oc get csr -o go-template='{{range .items}}{{if not .status}}{{.metadata.name}}{{"\n"}}{{end}}{{end}}' | xargs --no-run-if-empty oc adm certificate approve
echo "APPROVED all Pending csr"
sleep 3m 
echo "sleeped for 3m" 
echo "Again approving newly generated Pending csr"
oc get csr -o go-template='{{range .items}}{{if not .status}}{{.metadata.name}}{{"\n"}}{{end}}{{end}}' | xargs --no-run-if-empty oc adm certificate approve
echo "APPROVED all newly generated Pending csr"