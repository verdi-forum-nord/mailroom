defmodule Mailroom.IMAP.CommandError do
  @moduledoc """
  Raised when the IMAP server answers a command with a tagged `NO` response.
  """

  defexception [:command, :reason]

  @impl true
  def message(%__MODULE__{command: command, reason: reason}),
    do: "IMAP #{command} failed: #{reason}"
end
