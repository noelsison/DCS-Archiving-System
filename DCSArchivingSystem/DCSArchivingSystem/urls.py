from django.conf.urls import patterns, include, url

# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('DCSArchivingSystem.testapp.views',
    # 'DCSArchivingSystem.testapp.views' is a prefix
    # If prefix is empty (Eg. ''), we will need to use
    # DCSArchivingSystem.testapp.views.main_page instead of just main_page
    
    # Examples:
    # url(r'^$', 'DCSArchivingSystem.views.home', name='home'),
    # url(r'^DCSArchivingSystem/', include('DCSArchivingSystem.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    url(r'^admin/', include(admin.site.urls)),
	
    # Logged in
    url(r'^dashboard/$', 'dashboard'),
    
	# Login/Logout
    url(r'^login/$', 'log_in'),
    url(r'^logout/$', 'log_out'),
    
    # Main Page
    url(r'^$', 'index'),
    
    # URL format:
    # If browser url is www.mypage.com/pathInBrowser
    # Just add url(r'^pathInBrowser$', 'function in views.py'),
    # Don't forget the comma at the end of url(...),
)
