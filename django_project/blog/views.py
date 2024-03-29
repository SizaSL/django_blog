from django.shortcuts import render


posts = [
   {
      'author': 'SizaSL',
      'title': 'Blog Post 1',
      'content': 'First post content',
      'date_posted': 'Oct 24, 2019'
   },
   {
      'author': 'SizaSL',
      'title': 'Blog Post 1',
      'content': 'Second post content',
      'date_posted': 'Oct 25, 2019'
   }
]

def home(request):
   context = {
      'posts': posts
   }
   return render(request, 'blog/home.html', context)

def about(request):
   return render(request, 'blog/about.html', {'title': 'About'})