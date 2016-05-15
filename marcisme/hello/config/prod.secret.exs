use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :hello, Hello.Endpoint,
  secret_key_base: "Mb9kHDJ9Yjjq49yAc9RoMaoJ9LIB39kdOgMyI8UgkBuINBiQ9okdg5UrO7JZQjgx"

# Configure your database
config :hello, Hello.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "hello_prod",
  pool_size: 20
