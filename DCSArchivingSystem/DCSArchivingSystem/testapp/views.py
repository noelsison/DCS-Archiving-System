#from DCSArchivingSystem.DCSArchivingSystem.models import address, college, contact, course
# patient_management.management.models import Address, Account, Doctor, Clinic, Patient, Reservation, PatientLink, Secretary, SecretaryLink, Consultation
from django.shortcuts import render_to_response
from django.contrib.auth.decorators import login_required
from django.contrib.auth import authenticate, login, logout
from django.http import HttpResponseRedirect
from django.template import RequestContext
import scanner
from django.contrib.auth.models import User
from models import Faculty

# Create your views here.

#To call scanner.py use:
#scanner.SimpleApp(0).MainLoop()

# This is the function that is called by a url(...), in urls.py
#def index(request):
#    if request.user.is_authenticated():
#        return render_to_response('dashboard.html', {'user': request.user})
#    else:
#        return render_to_response('index.html')
def index(request):
    if request.user.is_authenticated():
        return render_to_response('dashboard.html', {'user': request.user})
    state = ""
    username = password = ''
    if request.POST:
        username = request.POST.get('username')
        password = request.POST.get('password')
        user = authenticate(username=username, password=password)
        if user is not None:
            if user.is_active:
                login(request, user)
                state = "Login ok!"
                return HttpResponseRedirect("/dashboard/")
            else:
                state = "Account not active."
        else:
            state = "* Wrong username or password."

    return render_to_response('login.html',RequestContext(request, {'state':state}))
	
@login_required
def dashboard(request):
    return render_to_response('dashboard.html', { 'user': request.user })

@login_required
def scanpage(request):
    return render_to_response('scanpage.html', { 'user': request.user })
	
@login_required
def scan(request):
    scanner.SimpleApp(0).MainLoop()
    return render_to_response('scan.html')

@login_required
def view_users(request):
    users_list= Faculty.objects.all()
    return render_to_response('users.html', {'users_list': users_list})
	
@login_required
def view_profile(request, faculty_number):
#    current_user = request.user
#    current_faculty = Faculty.objects.get(user_id = current_user.id)
#    return render_to_response('profile.html', {'current_user': current_user, 'current_faculty': current_faculty})
    current_faculty = Faculty.objects.get(id = int(faculty_number))
    return render_to_response('profile.html', {'current_faculty': current_faculty})
	
def log_in(request):
    if request.user.is_authenticated():
        return render_to_response('dashboard.html', {'user': request.user})
    state = ""
    username = password = ''
    if request.POST:
        username = request.POST.get('username')
        password = request.POST.get('password')
        user = authenticate(username=username, password=password)
        if user is not None:
            if user.is_active:
                login(request, user)
                state = "Login ok!"
                return HttpResponseRedirect("/dashboard/")
            else:
                state = "Account not active."
        else:
            state = "* Wrong username or password."

    return render_to_response('login.html',RequestContext(request, {'state':state}))

def log_out(request):
    logout(request)
    return HttpResponseRedirect('/')
    
"""def log_in(request):
    state = ""
    username = password = ''
    if request.POST:
        username = request.POST.get('username')
        password = request.POST.get('password')
        user = authenticate(username=username, password=password)
        if user is not None:
            if user.is_active:
                login(request, user)
                state = "Login ok!"
                return HttpResponseRedirect("/dashboard/")
            else:
                state = "Account not active."
        else:
            state = "* Wrong username or password."

    return render_to_response('login.html',RequestContext(request, {'state':state}))

def log_out(request):
    logout(request)
    return HttpResponseRedirect('/')"""
