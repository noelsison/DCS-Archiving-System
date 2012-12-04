from django.db import models
from django.contrib.auth.models import User

# Django Admin. Register models below
from django.contrib import admin

# Create your models here.
class Course(models.Model):
    name            = models.CharField(max_length=64)
    college         = models.CharField(max_length=64)
    department      = models.CharField(max_length=64)
    
    @classmethod
    def create(cls, name, college, department):
        course = cls(name=name, college=college, department=department)
        return course
    def __unicode__(self):
        return self.name + ", " + self.department, + ", " + self.department
'''
class Users(models.Model):
        username        = models.CharField(max_length=32, primary_key=True)
        faculty_id      = models.ForeignKey(Faculty)
        password        = models.CharField(max_length=32)
        isSuperUser     = models.BooleanField()
'''
# highest_degree_attained and length_of_service unsure
# photo is string for the stored value is its location
# photo is assumed to be 1
class Faculty(models.Model):
    lastname        = models.CharField(max_length=32)
    firstname       = models.CharField(max_length=64)
    middlename      = models.CharField(max_length=32)
    photo           = models.CharField(max_length=200, null=True, blank=True)
    birthday        = models.DateTimeField()
    course          = models.ForeignKey(Course)
    highest_degree_attained = models.CharField(max_length=100)
    length_of_service       = models.CharField(max_length=100)

class Email(models.Model):
    faculty_id      = models.ForeignKey(Faculty)
    email_address   = models.CharField(max_length=100)

class Contact(models.Model):
    faculty_id      = models.ForeignKey(Faculty)
    contact_number   = models.CharField(max_length=20)

class Address(models.Model):
    faculty_id      = models.ForeignKey(Faculty)
    address         = models.CharField(max_length=100)
    
class Transaction(models.Model):
    name            = models.CharField(max_length=100)
        
class File(models.Model):
    faculty_id      = models.ForeignKey(Faculty)
    trans_id        = models.ForeignKey(Transaction)
    path            = models.CharField(max_length=200)

class Action(models.Model):
    action_name     = models.CharField(max_length=100)

# file_id is the affected file
class Log(models.Model):
    username        = models.ForeignKey(User)
    action_id       = models.ForeignKey(Action)
    file_id         = models.ForeignKey(File)
    timestamp       = models.DateTimeField()

# Register Models to Django Admin
admin.site.register(Course)
admin.site.register(Faculty)
admin.site.register(Email)
admin.site.register(Contact)
admin.site.register(Address)
admin.site.register(Transaction)
admin.site.register(File)
admin.site.register(Action)
admin.site.register(Log)