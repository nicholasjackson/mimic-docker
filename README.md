# mimic-docker
Mimic is a testing tool that lets you set create a fake stand-in for an external web service to be used when writing integration/end-to-end tests for applications or libraries that access these services.

This image runs an instance of mimic allowing you build endpoint faking into your container driven workflow.  When writing end to end tests I find it quite useful to be able to fake responses to depended endpoints.  This allows you to test the behavior of your application.  You can also use this technique to simple replace a live endpoint with a fake for local testing.

## How to configure
To get mimic to fake a response you need to configure it by making a call to the setup endpoints, for example to return hello world whenever a get request for /hello is made to the mimic server you can...
```
curl -d "{\"path\": \"/hello\", \"body\":\"hello world\"}" http://mimicserver:11988/api/get
```

For more information on the various options and examples on how to integrate mimic with your cucumber workflow please see the main gem page.
[https://github.com/nicholasjackson/mimic](https://github.com/nicholasjackson/mimic)
