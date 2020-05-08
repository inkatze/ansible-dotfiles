function gustograph
  bin/rake graphql:prepare; and \
    yarn generate-client-types
end

function zentags
  ctags -R --exclude=.git \
    --exclude=node_modules \
    --exclude=frontend/javascripts/vendor \
    --exclude=frontend/javascripts/lib/kiwi.js
end

function zeni
  bundle install; and \
    yarn install; and \
    brails db:migrate; and \
    zentags; and \
    solarup
end

function zenu
  git pull --rebase origin development; and \
    zeni
end
