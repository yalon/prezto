# Auto-update Zsh every week.
_updater_date_file="$HOME/.oupdate"
if zstyle -t ':omz:module:update' auto-update; then
  zstyle -s ':omz:module:update' frequency '_updater_check_frequency'
  # Initialize the update reminder.
  if [[ ! -f "$_updater_date_file" ]]; then
    touch "$_updater_date_file"
  fi

  # Check for update every 7 days.
  if [ "$_updater_date_file"(Nm+$_updater_check_frequency)  ]; then
    oupdate && touch "$_updater_date_file"
  fi
fi

unset _updater_{date_file,check_frequency}

