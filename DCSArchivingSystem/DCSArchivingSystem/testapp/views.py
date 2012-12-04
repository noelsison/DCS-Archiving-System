from django.shortcuts import render_to_response
from django.contrib.auth.decorators import login_required
from django.contrib.auth import authenticate, login, logout
from django.http import HttpResponseRedirect
from django.template import RequestContext

# Create your views here.

# This is the function that is called by a url(...), in urls.py
def index(request):
    return render_to_response('index.html')

def dashboard(request):
    return render_to_response('dashboard.html', { 'user': request.user })
<<<<<<< HEAD
    
def log_in(request):
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
    
=======
    
def log_in(request):
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
