defmodule NotificationsLib do
  alias NotificationsLib.Notification

  def create_notification(attrs, repo) do
    %Notification{}
    |> Notification.changeset(attrs)
    |> repo.insert!
  end
end
