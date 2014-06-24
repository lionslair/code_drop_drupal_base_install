; code_drop make file for d.o. usage
core = 7.x
api = 2

; Modules
projects[] = ctools
projects[] = devel
projects[] = entity
projects[] = menu_block
projects[] = module_filter
projects[] = libraries
projects[] = pathauto
projects[] = token
projects[] = views
projects[] = wysiwyg
projects[] = imce
projects[] = imce_wysiwyg
projects[] = webform

; Themes
projects[] = shiny

projects[zenjy][type] = module
projects[zenjy][download][type] = git
projects[zenjy][download][branch] = "7.x-5.x"
projects[zenjy][download][url] = http://git.drupal.org/sandbox/sam/2288921.git
projects[zenjy][download][revision] = dbc776f9dd8f5bcef4ba459f6dfdf6de701dcf5d

; tinymce
libraries[tinymce][directory_name] = "tinymce"
libraries[tinymce][type] = "library"
libraries[tinymce][destination] = "libraries"
libraries[tinymce][download][type] = "get"
libraries[tinymce][download][url] = "http://download.moxiecode.com/tinymce/tinymce_3.5.10.zip"
