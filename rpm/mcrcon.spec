%define debug_package %{nil}

Name:		mcrcon
Version:	0.0.5
Release:	1%{?dist}
Summary:	Mcrcon is powerful IPv6 compliant minecraft rcon client with bukkit coloring support.

License:	zlib/libpng
URL:		http://example.com/
Source0:	%{name}-%{version}.tar.gz

BuildRequires:	gcc

%description
Mcrcon is powerful IPv6 compliant minecraft rcon client with bukkit coloring support.
It is well suited for remote administration and to be used as part of automated server maintenance
scripts. 

%prep
%setup -q


%build
make %{?_smp_mflags}


%install
%make_install


%files
/usr/bin/mcrcon



%changelog
