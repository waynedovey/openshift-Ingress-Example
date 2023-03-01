# openshift-Ingress-Example

See [product docs](https://docs.openshift.com/container-platform/4.12/networking/ingress-operator.html) for the supported steps and configurations.

This example does not use any additional Ingress Controllers and works out of the box. 

## Prerequisites

Access to a working OpenShift Cluster 

## Steps for Deploying a Example App

Create the Project and Deploy the example App

### Note: I have left a working example in the comments, paying attention to the domain name structure

```
./create-project.sh
```
Generate SSL Certificate and OpenShift Secret by running the following Command

### Note: Update the Domain, and host entry under ${FQDN}

```
./create-key.sh
```

Create the Ingress Object from command line

### Note: Update the Domain, and host entry under ${FQDN}

Test the Ingress object and the App

```
oc get Ingress
```

```
oc get route 
```

```
curl ${FQDN}
```
