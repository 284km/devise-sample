devise-sample
=============

    bundle install
    rails g scaffold comment word:string
    rails g devise:install
    rails g devise user
    rake db:migrate

- config/environments/development.rb
config.action_mailer.default_url_options = { host: 'localhost:3000' }

- app/views/layouts/application.html.erb

```
<body>

<p class="navbar-text pull-right">
<% if user_signed_in? %>
  Logged in as <strong><%= current_user.email %></strong>.
  <%= link_to 'Edit profile', edit_user_registration_path, :class => 'navbar-link' %> |
  <%= link_to "Logout", destroy_user_session_path, method: :delete, :class => 'navbar-link'  %>
<% else %>
  <%= link_to "Sign up", new_user_registration_path, :class => 'navbar-link'  %> |
  <%= link_to "Login", new_user_session_path, :class => 'navbar-link'  %>
<% end %>

<% if notice %>
  <p class="alert alert-notice"><%= notice %></p>
<% end %>
<% if alert %>
  <p class="alert alert-error"><%= alert %></p>
<% end %>
   <%= yield %>
```

- app/controllers/application_controller.rb
```
before_action :authenticate_user!
```

http://localhost:3000/

