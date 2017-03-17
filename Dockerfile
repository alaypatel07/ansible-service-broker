FROM ansibleapp/ansibleapp-base
MAINTAINER Ansible Apps <ansible-apps@redhat.com>

LABEL "com.redhat.ansibleapp.version"="0.1.0"
LABEL "com.redhat.ansibleapp.spec"=\
"aWQ6IDg5ZGFiNTZkLWE3MTItNDcyNS1hMDY1LWRjYjZjOGUxZGU4OApuYW1lOiBhbnNpYmxlYXBw\
L2Fuc2libGUtc2VydmljZS1icm9rZXItYW5zaWJsZWFwcApkZXNjcmlwdGlvbjogQW5zaWJsZUFw\
cCBPcGVuU2VydmljZUJyb2tlciBpbXBsZW1lbnRhdGlvbgpiaW5kYWJsZTogZmFsc2UKYXN5bmM6\
ICJ1bnN1cHBvcnRlZCIKcGFyYW1ldGVyczoKICAtIG5hbWU6IGRvY2tlcmh1Yl91c2VyCiAgICBk\
ZXNjcmlwdGlvbjogRG9ja2VySHViIFVzZXIKICAgIHR5cGU6IHN0cmluZwogIC0gbmFtZTogZG9j\
a2VyaHViX3Bhc3MKICAgIGRlc2NyaXB0aW9uOiBEb2NrZXJIdWIgUGFzcwogICAgdHlwZTogc3Ry\
aW5nCiAgLSBuYW1lOiBvcGVuc2hpZnRfdGFyZ2V0CiAgICBkZXNjcmlwdGlvbjogT3BlbnNoaWZ0\
IFRhcmdldAogICAgdHlwZTogc3RyaW5nCiAgLSBuYW1lOiBvcGVuc2hpZnRfdXNlcgogICAgZGVz\
Y3JpcHRpb246IE9wZW5zaGlmdCBVc2VyCiAgICB0eXBlOiBzdHJpbmcKICAtIG5hbWU6IG9wZW5z\
aGlmdF9wYXNzCiAgICBkZXNjcmlwdGlvbjogT3BlbnNoaWZ0IFBhc3MKICAgIHR5cGU6IHN0cmlu\
Zwo="
ADD ansible /opt/ansible
ADD ansibleapp /opt/ansibleapp

RUN useradd -u 1001 -r -g 0 -M -b /opt/ansibleapp -s /sbin/nologin -c "ansibleapp user" ansibleapp
RUN chown -R 1001:0 /opt/{ansible,ansibleapp}
USER 1001