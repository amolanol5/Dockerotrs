FROM centos:7
RUN yum -y update && yum -y install perl-core epel-release  \
    http://repo.openfusion.net/centos7-x86_64/openfusion-release-0.7-1.of.el7.noarch.rpm \
    "perl(Archive::Zip)" "perl(Crypt::SSLeay)" "perl(IO::Socket::SSL)" "perl(LWP::UserAgent)" \
    "perl(Net::DNS)" "perl(Net::LDAP)" "perl(Template)" "perl(XML::LibXML)" "perl(XML::LibXSLT)" \
    "perl(XML::Parser)" "perl(YAML::XS)"  "perl(Authen::NTLM)"  "perl(JSON::XS)" "perl(Encode::HanExtra)" \
    "perl(Crypt::Eksblowfish::Bcrypt)" perl-core procmail "perl(ModPerl::Util)" "perl(Text::CSV_XS)" \
    "perl(DBD::mysql)" "perl(DateTime)" "perl(DateTime::TimeZone)" perl-namespace-clean perl-Sub-Quote perl-Moo \
    "perl(YAML::XS)" "perl(Mail::IMAPClient)" gcc

    COPY otrs-6.0.30./ /opt/otrs