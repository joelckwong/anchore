# anchore
docker.io/library/debian:7

# docker-compose exec api anchore-cli --u admin --p foobar image get docker.io/library/debian:7 | grep 'Analysis Status'
Analysis Status: analyzing

# docker-compose exec api anchore-cli --u admin --p foobar image get docker.io/library/debian:7 | grep 'Analysis Status'
Analysis Status: analyzing

# docker-compose exec api anchore-cli --u admin --p foobar image get docker.io/library/debian:7 | grep 'Analysis Status'
Analysis Status: analyzed

# docker-compose exec api anchore-cli --u admin --p foobar image vuln docker.io/library/debian:7 all
Vulnerability ID Package Severity Fix Vulnerability URL
CVE-2005-2541 tar-1.26+dfsg-0.1+deb7u1 Negligible None https://security-tracker.debian.org/tracker/CVE-2005-2541
CVE-2007-5686 login-1:4.1.5.1-1+deb7u1 Negligible None https://security-tracker.debian.org/tracker/CVE-2007-5686
CVE-2007-5686 passwd-1:4.1.5.1-1+deb7u1 Negligible None https://security-tracker.debian.org/tracker/CVE-2007-5686
CVE-2007-6755 libssl1.0.0-1.0.1t-1+deb7u4 Negligible None https://security-tracker.debian.org/tracker/CVE-2007-6755
...
...
...

# docker-compose exec api anchore-cli --u admin --p foobar evaluate check docker.io/library/debian:7
Image Digest: sha256:92d507d81bd3b0459b121215f6f9d8249bb154c8b65e041942745dcc6309a7b5
Full Tag: docker.io/library/debian:7
Status: pass
Last Eval: 2018-11-06T22:51:47Z
Policy ID: 2c53a13c-1765-11e8-82ef-23527761d060
