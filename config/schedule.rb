# frozen_string_literal: true

every 1.minute do
  rake 'cache:clear'
end