// https://github.com/alseambusher/crontab-ui

module.exports = {
  apps: [
    {
      name: "crontab_ui",
      script: "crontab-ui",
      env: {
        BASIC_AUTH_USER: "USERNAME",
        BASIC_AUTH_PWD: "PASSWORD",
        HOST: "0.0.0.0",
        PORT: "12345",
        CRON_DB_PATH: "/home/USERNAME/.config/crontab_ui"
      }
    }
  ]
}
