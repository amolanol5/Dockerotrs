FROM centos:7
RUN yum -y update --nogpgcheck && yum -y --nogpgcheck install perl-core epel-release &&  \
    yum install --nogpgcheck -y http://repo.openfusion.net/centos7-x86_64/openfusion-release-0.7-1.of.el7.noarch.rpm \
    "perl(Archive::Zip)" "perl(Crypt::SSLeay)" "perl(IO::Socket::SSL)" "perl(LWP::UserAgent)" \
    "perl(Net::DNS)" "perl(Net::LDAP)" "perl(Template)" "perl(XML::LibXML)" "perl(XML::LibXSLT)" \
    "perl(XML::Parser)" "perl(YAML::XS)"    "perl(JSON::XS)"  \
    "perl(Crypt::Eksblowfish::Bcrypt)" perl-core procmail "perl(Text::CSV_XS)" \
    "perl(DBD::mysql)" "perl(DateTime)" "perl(DateTime::TimeZone)" perl-namespace-clean perl-Sub-Quote  \
    "perl(YAML::XS)" "perl(Mail::IMAPClient)" gcc  "perl(Crypt::Eksblowfish::Bcrypt)"  "perl(Mail::IMAPClient)" \
    "perl(JSON::XS)" "perl(YAML::XS)" "perl(Moo)" "perl(Authen::NTLM)" "perl(ModPerl::Util)"  "perl(Encode::HanExtra)" && \
    yum install --nogpgcheck -y "perl(Moo)"



    COPY otrs-6.0.30/ /opt/otrs