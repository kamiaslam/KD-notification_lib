defmodule NotificationsLib.Notification do
  use Ecto.Schema
  import Ecto.Changeset

  alias NotificationsLib.Enums.{NotificationType, UserType}


  schema "notifications" do
    field :type, NotificationType
    field :target_type, UserType
    field :target_id, :integer
    field :message, :string
    field :viewed, :boolean, default: false

    timestamps()
  end

  @doc false
  def changeset(notification, attrs) do
    notification
    |> cast(attrs, [:type, :target_type, :target_id, :viewed, :message])
    |> validate_required([:type, :target_type, :target_id, :message])
  end
end
