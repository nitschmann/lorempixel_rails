# lorempixel_rails


###### Version 1.0.0


lorempixel_rails is a Ruby Gem for custom image placeholders for views in [Ruby on Rails](http://rubyonrails.org/). The images are provided by [lorempixel](http://lorempixel.com/).

## Requirements


Ruby on Rails ( ```>= Version 4.0.0``` )

## Installation


Usage with Gemfile:

``` gem "lorempixel_rails" ```

``` $ bundle ```


Installation by hand:

``` gem install lorempixel_rails ```

## Usage


The Gem offers a simple helper method named ``` lorempixel_img_tag ``` which can be used, similar to the standard ``` image_tag ``` helper, in all Ruby on Rails views.

Following things can be configured and change the shape of the images:  

* The size (height and width)
* Colored [default] or gray images
* Category (abstract,animals, business, cats, city, food, nightlife, fashion, people, nature, sports, technics & transport) [default: nature] (http://lorempixel.com/images.php)
* Text can be added

For more information about formation and options for lorempixel images check: http://lorempixel.com/

#### Default and maximum image sizes:

All pictures have some default and maximums. These are:

* 1920px as maximum for heigth and width of images
* 100px as default value for height and width



Default picture without any options:

``` <%= lorempixel_img_tag %> ```


Picture with size of 500x300 and without category:

``` <%= lorempixel_img_tag(:size => {:width => 500, :height => 300}) %> ```


Picture with size of 600x280 and with type 'technics':

``` <%= lorempixel_img_tag(:size => {:width => 600, :height => 280}, :type => "technics") %> ```

Picture with random type:

``` <%= lorempixel_img_tag(:size => {:width => 600, :height => 320}, :type => "random") %> ```


Picture with text:

``` <%=
  lorempixel_img_tag(
    :size => {:width => 500, :height => 200},
    :type => "people",
    :text => "Hello People"
  )
%>
```

## Patches & Forks


##### Future

* Specific category list pictures
* Support Caching


## License 

See `LICENSE` file

> Copyright &copy; 2014 Florian Nitschmann (f.nitschmann@googlemail.com)



 
  

 
