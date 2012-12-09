from django.db import models
from django.contrib.auth.models import User

# Django Admin. Register models below
from django.contrib import admin

# Create your models here.
class College(models.Model):
    name            = models.CharField(max_length=64)
    
    def __unicode__(self):
        return self.name

class Department(models.Model):
    name            = models.CharField(max_length=64)
    college         = models.ForeignKey(College)
    
    def __unicode__(self):
        return self.name + ", " + self.college
        
class Course(models.Model):
    name            = models.CharField(max_length=64)
    department      = models.ForeignKey(Department)
    
    def __unicode__(self):
        return self.name + ", " + self.department
    @classmethod
    def create(cls, name, department):
        course = cls(name=name, department=department)
        return course

class Faculty(models.Model):
    lastname        = models.CharField(max_length=32)
    firstname       = models.CharField(max_length=64)
    middlename      = models.CharField(max_length=32)
    photo           = models.ImageField(upload_to='photos', null=True, blank=True)
    birthday        = models.DateTimeField()
    course          = models.ForeignKey(Course)
    highest_degree_attained = models.CharField(max_length=100)
    length_of_service       = models.CharField(max_length=100)
    
    def __unicode__(self):
        return self.lastname + ", " + self.firstname

class Email(models.Model):
    faculty_id      = models.ForeignKey(Faculty)
    email_address   = models.CharField(max_length=100)
    
    def __unicode__(self):
        return self.email_address

class Contact(models.Model):
    faculty_id      = models.ForeignKey(Faculty)
    contact_number   = models.CharField(max_length=20)
    
    def __unicode__(self):
        return self.contact_number

class Address(models.Model):
    faculty_id      = models.ForeignKey(Faculty)
    address         = models.CharField(max_length=100)
    
    def __unicode__(self):
        return self.address
    
class Transaction(models.Model):
    name            = models.CharField(max_length=100)
    
    def __unicode__(self):
        return self.name
        
class File(models.Model):
    faculty_id      = models.ForeignKey(Faculty)
    trans_id        = models.ForeignKey(Transaction)
    file            = models.FileField(upload_to='files/%Y')
    # path            = models.CharField(max_length=200)
    
    def __unicode__(self):
        return file.name + " " + file.size + " bytes"

class Action(models.Model):
    action_name     = models.CharField(max_length=100)
    
    def __unicode__(self):
        return self.action_name

# file_id is the affected file
class Log(models.Model):
    username        = models.ForeignKey(User)
    action_id       = models.ForeignKey(Action)
    file_id         = models.ForeignKey(File)
    timestamp       = models.DateTimeField()
    
    def __unicode__(self):
        return self.username + " " + str(self.timestamp)

# Register Models to Django Admin
admin.site.register(College)
admin.site.register(Department)
admin.site.register(Course)
admin.site.register(Faculty)
admin.site.register(Email)
admin.site.register(Contact)
admin.site.register(Address)
admin.site.register(Transaction)
admin.site.register(File)
admin.site.register(Action)
admin.site.register(Log)
